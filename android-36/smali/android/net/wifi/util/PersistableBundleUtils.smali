.class public Landroid/net/wifi/util/PersistableBundleUtils;
.super Ljava/lang/Object;
.source "PersistableBundleUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist arraysEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "left"    # Ljava/lang/Object;
    .param p1, "right"    # Ljava/lang/Object;

    .line 70
    instance-of v0, p0, [Z

    if-eqz v0, :cond_f

    .line 71
    move-object v0, p0

    check-cast v0, [Z

    move-object v1, p1

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0

    .line 72
    :cond_f
    instance-of v0, p0, [D

    if-eqz v0, :cond_1e

    .line 73
    move-object v0, p0

    check-cast v0, [D

    move-object v1, p1

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    return v0

    .line 74
    :cond_1e
    instance-of v0, p0, [I

    if-eqz v0, :cond_2d

    .line 75
    move-object v0, p0

    check-cast v0, [I

    move-object v1, p1

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    .line 76
    :cond_2d
    instance-of v0, p0, [J

    if-eqz v0, :cond_3c

    .line 77
    move-object v0, p0

    check-cast v0, [J

    move-object v1, p1

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    .line 78
    :cond_3c
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_4b

    .line 79
    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 81
    :cond_4b
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist getArrayHashCode(Ljava/lang/Object;)I
    .registers 2
    .param p0, "arr"    # Ljava/lang/Object;

    .line 55
    instance-of v0, p0, [Z

    if-eqz v0, :cond_c

    .line 56
    move-object v0, p0

    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    return v0

    .line 57
    :cond_c
    instance-of v0, p0, [D

    if-eqz v0, :cond_18

    .line 58
    move-object v0, p0

    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0

    .line 59
    :cond_18
    instance-of v0, p0, [I

    if-eqz v0, :cond_24

    .line 60
    move-object v0, p0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0

    .line 61
    :cond_24
    instance-of v0, p0, [J

    if-eqz v0, :cond_30

    .line 62
    move-object v0, p0

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0

    .line 63
    :cond_30
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_3c

    .line 64
    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 66
    :cond_3c
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getHashCode(Landroid/os/PersistableBundle;)I
    .registers 7
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 34
    if-nez p0, :cond_4

    .line 35
    const/4 v0, -0x1

    return v0

    .line 38
    :cond_4
    const/4 v0, 0x0

    .line 39
    .local v0, "iterativeHashcode":I
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 40
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 41
    .local v3, "val":Ljava/lang/Object;
    instance-of v4, v3, Landroid/os/PersistableBundle;

    if-eqz v4, :cond_3a

    .line 42
    nop

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Landroid/os/PersistableBundle;

    invoke-static {v5}, Landroid/net/wifi/util/PersistableBundleUtils;->getHashCode(Landroid/os/PersistableBundle;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v2, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    goto :goto_65

    .line 44
    :cond_3a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Landroid/net/wifi/util/PersistableBundleUtils;->getArrayHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v2, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    goto :goto_65

    .line 47
    :cond_59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 49
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/Object;
    :goto_65
    goto :goto_d

    .line 51
    :cond_66
    return v0
.end method

.method public static blacklist isEqual(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z
    .registers 10
    .param p0, "left"    # Landroid/os/PersistableBundle;
    .param p1, "right"    # Landroid/os/PersistableBundle;

    .line 88
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 89
    return v1

    .line 91
    :cond_8
    invoke-static {p0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_14

    .line 92
    return v3

    .line 94
    :cond_14
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 95
    return v3

    .line 98
    :cond_23
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 99
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 100
    .local v4, "leftVal":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 102
    .local v5, "rightVal":Ljava/lang/Object;
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 103
    goto :goto_2b

    .line 104
    :cond_46
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_55

    .line 106
    return v3

    .line 109
    :cond_55
    instance-of v6, v4, Landroid/os/PersistableBundle;

    if-eqz v6, :cond_66

    .line 110
    move-object v6, v4

    check-cast v6, Landroid/os/PersistableBundle;

    move-object v7, v5

    check-cast v7, Landroid/os/PersistableBundle;

    invoke-static {v6, v7}, Landroid/net/wifi/util/PersistableBundleUtils;->isEqual(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 111
    return v3

    .line 113
    :cond_66
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_77

    .line 114
    invoke-static {v4, v5}, Landroid/net/wifi/util/PersistableBundleUtils;->arraysEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 115
    return v3

    .line 118
    :cond_77
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 119
    return v3

    .line 122
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "leftVal":Ljava/lang/Object;
    .end local v5    # "rightVal":Ljava/lang/Object;
    :cond_7e
    goto :goto_2b

    .line 123
    :cond_7f
    return v1
.end method
