.class public Landroid/os/health/HealthKeys$Constants;
.super Ljava/lang/Object;
.source "HealthKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/health/HealthKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constants"
.end annotation


# instance fields
.field private final greylist-max-o mDataType:Ljava/lang/String;

.field private final greylist-max-o mKeys:[[I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 14
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [[I

    iput-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    .line 94
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mDataType:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 99
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const-class v1, Landroid/os/health/HealthKeys$Constant;

    .line 101
    .local v1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/health/HealthKeys$Constant;>;"
    array-length v2, v0

    .line 103
    .local v2, "N":I
    iget-object v3, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    array-length v3, v3

    new-array v3, v3, [Landroid/os/health/HealthKeys$SortedIntArray;

    .line 104
    .local v3, "keys":[Landroid/os/health/HealthKeys$SortedIntArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    array-length v5, v3

    if-ge v4, v5, :cond_28

    .line 105
    new-instance v5, Landroid/os/health/HealthKeys$SortedIntArray;

    invoke-direct {v5, v2}, Landroid/os/health/HealthKeys$SortedIntArray;-><init>(I)V

    aput-object v5, v3, v4

    .line 104
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 108
    .end local v4    # "i":I
    :cond_28
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_29
    if-ge v4, v2, :cond_91

    .line 109
    aget-object v5, v0, v4

    .line 110
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Landroid/os/health/HealthKeys$Constant;

    .line 111
    .local v6, "constant":Landroid/os/health/HealthKeys$Constant;
    if-eqz v6, :cond_8e

    .line 112
    invoke-interface {v6}, Landroid/os/health/HealthKeys$Constant;->type()I

    move-result v7

    .line 113
    .local v7, "type":I
    array-length v8, v3

    if-ge v7, v8, :cond_6b

    .line 118
    :try_start_3c
    aget-object v8, v3, v7

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/health/HealthKeys$SortedIntArray;->addValue(I)V
    :try_end_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_46} :catch_47

    .line 122
    goto :goto_8e

    .line 119
    :catch_47
    move-exception v8

    .line 120
    .local v8, "ex":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t read constant value type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " field="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 114
    .end local v8    # "ex":Ljava/lang/IllegalAccessException;
    :cond_6b
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown Constant type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " on "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 108
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "constant":Landroid/os/health/HealthKeys$Constant;
    .end local v7    # "type":I
    :cond_8e
    :goto_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 126
    .end local v4    # "i":I
    :cond_91
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_92
    array-length v5, v3

    if-ge v4, v5, :cond_a2

    .line 127
    iget-object v5, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object v6, v3, v4

    invoke-virtual {v6}, Landroid/os/health/HealthKeys$SortedIntArray;->getArray()[I

    move-result-object v6

    aput-object v6, v5, v4

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_92

    .line 129
    .end local v4    # "i":I
    :cond_a2
    return-void
.end method


# virtual methods
.method public greylist-max-o getDataType()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mDataType:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getIndex(II)I
    .registers 7
    .param p1, "type"    # I
    .param p2, "key"    # I

    .line 163
    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object v0, v0, p1

    invoke-static {v0, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 164
    .local v0, "index":I
    if-ltz v0, :cond_b

    .line 165
    return v0

    .line 167
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o getKeys(I)[I
    .registers 3
    .param p1, "type"    # I

    .line 176
    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public greylist-max-o getSize(I)I
    .registers 3
    .param p1, "type"    # I

    .line 149
    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object v0, v0, p1

    array-length v0, v0

    return v0
.end method
