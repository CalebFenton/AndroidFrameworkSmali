.class public final Lcom/android/internal/widget/InlinePresentationStyleUtils;
.super Ljava/lang/Object;
.source "InlinePresentationStyleUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static blacklist bundleEquals(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 11
    .param p0, "bundle1"    # Landroid/os/Bundle;
    .param p1, "bundle2"    # Landroid/os/Bundle;

    .line 42
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 43
    return v0

    .line 45
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_4e

    if-nez p1, :cond_a

    goto :goto_4e

    .line 48
    :cond_a
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_15

    .line 49
    return v1

    .line 51
    :cond_15
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 52
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 53
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 54
    .local v5, "value1":Ljava/lang/Object;
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 55
    .local v6, "value2":Ljava/lang/Object;
    instance-of v7, v5, Landroid/os/Bundle;

    if-eqz v7, :cond_44

    instance-of v7, v6, Landroid/os/Bundle;

    if-eqz v7, :cond_44

    .line 56
    move-object v7, v5

    check-cast v7, Landroid/os/Bundle;

    move-object v8, v6

    check-cast v8, Landroid/os/Bundle;

    invoke-static {v7, v8}, Lcom/android/internal/widget/InlinePresentationStyleUtils;->bundleEquals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v7

    goto :goto_48

    .line 57
    :cond_44
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_48
    nop

    .line 58
    .local v7, "equal":Z
    if-nez v7, :cond_4c

    .line 59
    return v1

    .line 61
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value1":Ljava/lang/Object;
    .end local v6    # "value2":Ljava/lang/Object;
    .end local v7    # "equal":Z
    :cond_4c
    goto :goto_1d

    .line 62
    :cond_4d
    return v0

    .line 46
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4e
    :goto_4e
    return v1
.end method

.method public static blacklist filterContentTypes(Landroid/os/Bundle;)V
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 69
    if-nez p0, :cond_3

    .line 70
    return-void

    .line 73
    :cond_3
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 76
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_26

    .line 77
    move-object v3, v2

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Lcom/android/internal/widget/InlinePresentationStyleUtils;->filterContentTypes(Landroid/os/Bundle;)V

    goto :goto_2d

    .line 78
    :cond_26
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_2d

    .line 79
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 81
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "o":Ljava/lang/Object;
    :cond_2d
    :goto_2d
    goto :goto_b

    .line 82
    :cond_2e
    return-void
.end method
