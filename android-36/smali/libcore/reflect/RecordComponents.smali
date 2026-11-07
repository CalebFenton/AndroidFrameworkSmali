.class public final Llibcore/reflect/RecordComponents;
.super Ljava/lang/Object;
.source "RecordComponents.java"


# static fields
.field private static final blacklist DEX_ANNOTATION_VISIBILITY_RUNTIME:B = 0x1t


# instance fields
.field private blacklist componentAnnotationVisibilities:[[B

.field private blacklist componentAnnotations:[[Ljava/lang/annotation/Annotation;

.field private final blacklist componentNames:[Ljava/lang/String;

.field private final blacklist componentSignatures:[Ldalvik/annotation/Signature;

.field private final blacklist componentTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 51
    .local p1, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Llibcore/reflect/RecordComponents;->declaringClass:Ljava/lang/Class;

    .line 53
    const-string v0, "componentNames"

    const-class v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Llibcore/reflect/RecordComponents;->readElement(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Llibcore/reflect/RecordComponents;->componentNames:[Ljava/lang/String;

    .line 54
    const-string v0, "componentTypes"

    const-class v1, [Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Llibcore/reflect/RecordComponents;->readElement(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    iput-object v0, p0, Llibcore/reflect/RecordComponents;->componentTypes:[Ljava/lang/Class;

    .line 55
    const-string v0, "componentSignatures"

    const-class v1, [Ldalvik/annotation/Signature;

    invoke-direct {p0, v0, v1}, Llibcore/reflect/RecordComponents;->readElement(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/annotation/Signature;

    iput-object v0, p0, Llibcore/reflect/RecordComponents;->componentSignatures:[Ldalvik/annotation/Signature;

    .line 56
    return-void
.end method

.method private blacklist readElement(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 59
    .local p2, "array_class":Ljava/lang/Class;, "Ljava/lang/Class<[TT;>;"
    iget-object v0, p0, Llibcore/reflect/RecordComponents;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getRecordAnnotationElement(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getGenericSignature(I)Ljava/lang/String;
    .registers 8
    .param p1, "index"    # I

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "signature":Ldalvik/annotation/Signature;
    iget-object v1, p0, Llibcore/reflect/RecordComponents;->componentSignatures:[Ldalvik/annotation/Signature;

    if-eqz v1, :cond_10

    if-ltz p1, :cond_10

    iget-object v1, p0, Llibcore/reflect/RecordComponents;->componentSignatures:[Ldalvik/annotation/Signature;

    array-length v1, v1

    if-ge p1, v1, :cond_10

    .line 76
    iget-object v1, p0, Llibcore/reflect/RecordComponents;->componentSignatures:[Ldalvik/annotation/Signature;

    aget-object v0, v1, p1

    .line 78
    :cond_10
    if-nez v0, :cond_14

    .line 79
    const/4 v1, 0x0

    return-object v1

    .line 81
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ldalvik/annotation/Signature;->value()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v3, :cond_29

    aget-object v5, v2, v4

    .line 83
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 85
    :cond_29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getNames()[Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Llibcore/reflect/RecordComponents;->componentNames:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTypes()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Llibcore/reflect/RecordComponents;->componentTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getVisibleAnnotations(I)[Ljava/lang/annotation/Annotation;
    .registers 14
    .param p1, "index"    # I

    .line 94
    monitor-enter p0

    .line 95
    :try_start_1
    iget-object v0, p0, Llibcore/reflect/RecordComponents;->componentAnnotations:[[Ljava/lang/annotation/Annotation;

    if-nez v0, :cond_28

    .line 96
    const-string v0, "componentAnnotations"

    const-class v1, [[Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v0, v1}, Llibcore/reflect/RecordComponents;->readElement(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/annotation/Annotation;

    .line 98
    .local v0, "allAnnotations":[[Ljava/lang/annotation/Annotation;
    const-string v1, "componentAnnotationVisibilities"

    const-class v2, [[B

    invoke-direct {p0, v1, v2}, Llibcore/reflect/RecordComponents;->readElement(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    .line 100
    .local v1, "allVisibilities":[[B
    const/4 v2, 0x0

    if-nez v0, :cond_1f

    .line 101
    new-array v3, v2, [[Ljava/lang/annotation/Annotation;

    move-object v0, v3

    .line 103
    :cond_1f
    if-nez v1, :cond_24

    .line 104
    new-array v2, v2, [[B

    move-object v1, v2

    .line 106
    :cond_24
    iput-object v1, p0, Llibcore/reflect/RecordComponents;->componentAnnotationVisibilities:[[B

    .line 107
    iput-object v0, p0, Llibcore/reflect/RecordComponents;->componentAnnotations:[[Ljava/lang/annotation/Annotation;

    .line 109
    .end local v0    # "allAnnotations":[[Ljava/lang/annotation/Annotation;
    .end local v1    # "allVisibilities":[[B
    :cond_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_76

    .line 110
    iget-object v0, p0, Llibcore/reflect/RecordComponents;->componentAnnotations:[[Ljava/lang/annotation/Annotation;

    .line 111
    .restart local v0    # "allAnnotations":[[Ljava/lang/annotation/Annotation;
    iget-object v1, p0, Llibcore/reflect/RecordComponents;->componentAnnotationVisibilities:[[B

    .line 113
    .restart local v1    # "allVisibilities":[[B
    if-ltz p1, :cond_73

    array-length v2, v0

    if-ge p1, v2, :cond_73

    aget-object v2, v0, p1

    if-nez v2, :cond_37

    goto :goto_73

    .line 117
    :cond_37
    aget-object v2, v0, p1

    .line 118
    .local v2, "annotations":[Ljava/lang/annotation/Annotation;
    array-length v3, v2

    .line 119
    .local v3, "size":I
    if-nez v3, :cond_3d

    .line 120
    return-object v2

    .line 122
    :cond_3d
    array-length v4, v1

    if-ge p1, v4, :cond_43

    aget-object v4, v1, p1

    goto :goto_44

    :cond_43
    const/4 v4, 0x0

    .line 123
    .local v4, "visibilities":[B
    :goto_44
    if-nez v4, :cond_49

    .line 124
    sget-object v5, Llibcore/util/EmptyArray;->ANNOTATION:[Ljava/lang/annotation/Annotation;

    return-object v5

    .line 127
    :cond_49
    array-length v5, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 128
    .local v5, "minSize":I
    const/4 v6, 0x0

    .line 129
    .local v6, "visibleAnnotationsSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_50
    const/4 v8, 0x1

    if-ge v7, v5, :cond_5c

    .line 130
    aget-byte v9, v4, v7

    if-ne v9, v8, :cond_59

    .line 131
    add-int/lit8 v6, v6, 0x1

    .line 129
    :cond_59
    add-int/lit8 v7, v7, 0x1

    goto :goto_50

    .line 136
    .end local v7    # "i":I
    :cond_5c
    if-ne v6, v3, :cond_5f

    .line 137
    return-object v2

    .line 141
    :cond_5f
    new-array v7, v6, [Ljava/lang/annotation/Annotation;

    .line 142
    .local v7, "visibleAnnotations":[Ljava/lang/annotation/Annotation;
    const/4 v9, 0x0

    .line 143
    .local v9, "j":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_63
    if-ge v10, v5, :cond_72

    .line 144
    aget-byte v11, v4, v10

    if-ne v11, v8, :cond_6f

    .line 145
    aget-object v11, v2, v10

    aput-object v11, v7, v9

    .line 146
    add-int/lit8 v9, v9, 0x1

    .line 143
    :cond_6f
    add-int/lit8 v10, v10, 0x1

    goto :goto_63

    .line 149
    .end local v10    # "i":I
    :cond_72
    return-object v7

    .line 114
    .end local v2    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v3    # "size":I
    .end local v4    # "visibilities":[B
    .end local v5    # "minSize":I
    .end local v6    # "visibleAnnotationsSize":I
    .end local v7    # "visibleAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v9    # "j":I
    :cond_73
    :goto_73
    sget-object v2, Llibcore/util/EmptyArray;->ANNOTATION:[Ljava/lang/annotation/Annotation;

    return-object v2

    .line 109
    .end local v0    # "allAnnotations":[[Ljava/lang/annotation/Annotation;
    .end local v1    # "allVisibilities":[[B
    :catchall_76
    move-exception v0

    :try_start_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v0
.end method
