.class public abstract Ljava/lang/Enum;
.super Ljava/lang/Object;
.source "Enum.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Enum$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3baff5e8284be7d5L

.field private static final sharedConstantsCache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;

.field private final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 35
    new-instance v0, Ljava/lang/Enum$1;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/lang/Enum$1;-><init>(I)V

    #@7
    .line 34
    sput-object v0, Ljava/lang/Enum;->sharedConstantsCache:Llibcore/util/BasicLruCache;

    #@9
    .line 30
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    #@0
    .prologue
    .line 67
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    iput-object p1, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    #@5
    .line 69
    iput p2, p0, Ljava/lang/Enum;->ordinal:I

    #@7
    .line 67
    return-void
.end method

.method public static getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 211
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Ljava/lang/Enum;->sharedConstantsCache:Llibcore/util/BasicLruCache;

    #@2
    invoke-virtual {v0, p0}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/Enum;

    #@8
    return-object v0
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 186
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    #@2
    .line 187
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "enumType == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 188
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 189
    new-instance v2, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v3, "name == null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 191
    :cond_1
    invoke-static {p0}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    #@19
    move-result-object v1

    #@1a
    .line 192
    .local v1, "values":[Ljava/lang/Enum;, "[TT;"
    if-nez v1, :cond_2

    #@1c
    .line 193
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1e
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, " is not an enum type"

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v2

    #@36
    .line 195
    :cond_2
    const/4 v2, 0x0

    #@37
    array-length v3, v1

    #@38
    :goto_0
    if-ge v2, v3, :cond_4

    #@3a
    aget-object v0, v1, v2

    #@3c
    .line 196
    .local v0, "value":Ljava/lang/Enum;, "TT;"
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v4

    #@44
    if-eqz v4, :cond_3

    #@46
    .line 197
    return-object v0

    #@47
    .line 195
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 200
    .end local v0    # "value":Ljava/lang/Enum;, "TT;"
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4c
    new-instance v3, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    const-string/jumbo v4, " is not a constant in "

    #@58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v2
.end method


# virtual methods
.method protected final clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    #@2
    const-string/jumbo v1, "Enums may not be cloned"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public final compareTo(Ljava/lang/Enum;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 152
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    .local p1, "o":Ljava/lang/Enum;, "TE;"
    iget v0, p0, Ljava/lang/Enum;->ordinal:I

    #@2
    iget v1, p1, Ljava/lang/Enum;->ordinal:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 151
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    #@2
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 116
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    if-ne p0, p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method protected final finalize()V
    .locals 0

    #@0
    .prologue
    .line 221
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    return-void
.end method

.method public final getDeclaringClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 162
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 163
    .local v0, "myClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    .line 164
    .local v1, "mySuperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Enum;

    #@a
    if-ne v2, v1, :cond_0

    #@c
    .line 165
    return-object v0

    #@d
    .line 167
    :cond_0
    return-object v1
.end method

.method public final hashCode()I
    .locals 2

    #@0
    .prologue
    .line 121
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    iget v1, p0, Ljava/lang/Enum;->ordinal:I

    #@2
    iget-object v0, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    #@4
    if-nez v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    add-int/2addr v0, v1

    #@8
    return v0

    #@9
    :cond_0
    iget-object v0, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    #@b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@e
    move-result v0

    #@f
    goto :goto_0
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 80
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    iget-object v0, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final ordinal()I
    .locals 1

    #@0
    .prologue
    .line 90
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    iget v0, p0, Ljava/lang/Enum;->ordinal:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 101
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    iget-object v0, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
