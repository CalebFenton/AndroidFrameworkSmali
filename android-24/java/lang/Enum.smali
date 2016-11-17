.class public abstract Ljava/lang/Enum;
.super Ljava/lang/Object;
.source "Enum.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


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
        "Ljava/lang/Comparable",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
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
    .line 259
    new-instance v0, Ljava/lang/Enum$1;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/lang/Enum$1;-><init>(I)V

    #@7
    .line 258
    sput-object v0, Ljava/lang/Enum;->sharedConstantsCache:Llibcore/util/BasicLruCache;

    #@9
    .line 60
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    #@0
    .prologue
    .line 122
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 123
    iput-object p1, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    #@5
    .line 124
    iput p2, p0, Ljava/lang/Enum;->ordinal:I

    #@7
    .line 122
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
    .line 286
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

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 299
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    #@2
    const-string/jumbo v1, "can\'t deserialize enum"

    #@5
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method private readObjectNoData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 303
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    #@2
    const-string/jumbo v1, "can\'t deserialize enum"

    #@5
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 6
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
    .line 236
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    #@2
    .line 237
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "enumType == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 238
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 239
    new-instance v3, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v4, "Name is null"

    #@12
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v3

    #@16
    .line 240
    :cond_1
    invoke-static {p0}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    #@19
    move-result-object v2

    #@1a
    .line 241
    .local v2, "values":[Ljava/lang/Enum;, "[TT;"
    const/4 v0, 0x0

    #@1b
    .line 242
    .local v0, "result":Ljava/lang/Enum;, "TT;"
    if-eqz v2, :cond_3

    #@1d
    .line 243
    const/4 v3, 0x0

    #@1e
    array-length v4, v2

    #@1f
    .end local v0    # "result":Ljava/lang/Enum;, "TT;"
    :goto_0
    if-ge v3, v4, :cond_4

    #@21
    aget-object v1, v2, v3

    #@23
    .line 244
    .local v1, "value":Ljava/lang/Enum;, "TT;"
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_2

    #@2d
    .line 245
    move-object v0, v1

    #@2e
    .line 243
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@30
    goto :goto_0

    #@31
    .line 249
    .end local v1    # "value":Ljava/lang/Enum;, "TT;"
    .restart local v0    # "result":Ljava/lang/Enum;, "TT;"
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@33
    new-instance v4, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    const-string/jumbo v5, " is not an enum type."

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v3

    #@4f
    .line 252
    .end local v0    # "result":Ljava/lang/Enum;, "TT;"
    :cond_4
    if-eqz v0, :cond_5

    #@51
    .line 253
    return-object v0

    #@52
    .line 254
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@54
    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v5, "No enum constant "

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    const-string/jumbo v5, "."

    #@6b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    .line 254
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v3
.end method


# virtual methods
.method protected final clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    #@2
    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    #@5
    throw v0
.end method

.method public final compareTo(Ljava/lang/Enum;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 181
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    .local p1, "o":Ljava/lang/Enum;, "TE;"
    move-object v0, p1

    #@1
    .line 182
    .local v0, "other":Ljava/lang/Enum;
    move-object v1, p0

    #@2
    .line 183
    .local v1, "self":Ljava/lang/Enum;
    invoke-virtual {p0}, Ljava/lang/Enum;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {p1}, Ljava/lang/Enum;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v3

    #@a
    if-eq v2, v3, :cond_0

    #@c
    .line 184
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    #@13
    move-result-object v3

    #@14
    if-eq v2, v3, :cond_0

    #@16
    .line 185
    new-instance v2, Ljava/lang/ClassCastException;

    #@18
    invoke-direct {v2}, Ljava/lang/ClassCastException;-><init>()V

    #@1b
    throw v2

    #@1c
    .line 186
    :cond_0
    iget v2, p0, Ljava/lang/Enum;->ordinal:I

    #@1e
    iget v3, p1, Ljava/lang/Enum;->ordinal:I

    #@20
    sub-int/2addr v2, v3

    #@21
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 180
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
    .line 148
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
    .line 292
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
    .line 202
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 203
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    .line 204
    .local v1, "zuper":Ljava/lang/Class;
    const-class v2, Ljava/lang/Enum;

    #@a
    if-ne v1, v2, :cond_0

    #@c
    .end local v0    # "clazz":Ljava/lang/Class;
    :goto_0
    return-object v0

    #@d
    .restart local v0    # "clazz":Ljava/lang/Class;
    :cond_0
    move-object v0, v1

    #@e
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    #@0
    .prologue
    .line 157
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 82
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    iget-object v0, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final ordinal()I
    .locals 1

    #@0
    .prologue
    .line 108
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    iget v0, p0, Ljava/lang/Enum;->ordinal:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 136
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    iget-object v0, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
