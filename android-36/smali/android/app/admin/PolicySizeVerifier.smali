.class public Landroid/app/admin/PolicySizeVerifier;
.super Ljava/lang/Object;
.source "PolicySizeVerifier.java"


# static fields
.field public static final blacklist MAX_LONG_SUPPORT_MESSAGE_LENGTH:I = 0x4e20

.field public static final blacklist MAX_ORG_NAME_LENGTH:I = 0xc8

.field public static final blacklist MAX_PACKAGE_NAME_LENGTH:I = 0xdf

.field public static final blacklist MAX_PROFILE_NAME_LENGTH:I = 0xc8

.field public static final blacklist MAX_SHORT_SUPPORT_MESSAGE_LENGTH:I = 0xc8


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enforceMaxBundleFieldsLength(Landroid/os/Bundle;)V
    .registers 12
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 95
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 96
    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/os/Bundle;>;"
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 97
    :goto_8
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a5

    .line 98
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 99
    .local v1, "current":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 100
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v4, "key in Bundle"

    invoke-static {v3, v4}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxStringLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 102
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    const-string/jumbo v6, "string value in Bundle with key"

    if-eqz v5, :cond_51

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 103
    .local v5, "str":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxStringLength(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    .line 105
    .end local v5    # "str":Ljava/lang/String;
    :cond_51
    instance-of v5, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v5, :cond_75

    move-object v5, v4

    check-cast v5, [Ljava/lang/String;

    .line 106
    .local v5, "strArray":[Ljava/lang/String;
    array-length v8, v5

    :goto_5a
    if-ge v7, v8, :cond_a1

    aget-object v9, v5, v7

    .line 107
    .local v9, "str":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxStringLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v9    # "str":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    .line 110
    .end local v5    # "strArray":[Ljava/lang/String;
    :cond_75
    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_80

    move-object v5, v4

    check-cast v5, Landroid/os/Bundle;

    .line 111
    .local v5, "b":Landroid/os/Bundle;
    invoke-interface {v0, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 113
    .end local v5    # "b":Landroid/os/Bundle;
    :cond_80
    instance-of v5, v4, [Landroid/os/Parcelable;

    if-eqz v5, :cond_a1

    move-object v5, v4

    check-cast v5, [Landroid/os/Parcelable;

    .line 114
    .local v5, "parcelableArray":[Landroid/os/Parcelable;
    array-length v6, v5

    :goto_88
    if-ge v7, v6, :cond_a1

    aget-object v8, v5, v7

    .line 115
    .local v8, "parcelable":Landroid/os/Parcelable;
    instance-of v9, v8, Landroid/os/Bundle;

    if-eqz v9, :cond_99

    .line 119
    move-object v9, v8

    check-cast v9, Landroid/os/Bundle;

    invoke-interface {v0, v9}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v8    # "parcelable":Landroid/os/Parcelable;
    add-int/lit8 v7, v7, 0x1

    goto :goto_88

    .line 116
    .restart local v8    # "parcelable":Landroid/os/Parcelable;
    :cond_99
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "bundle-array can only hold Bundles"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "parcelableArray":[Landroid/os/Parcelable;
    .end local v8    # "parcelable":Landroid/os/Parcelable;
    :cond_a1
    :goto_a1
    goto/16 :goto_1c

    .line 123
    .end local v1    # "current":Landroid/os/Bundle;
    :cond_a3
    goto/16 :goto_8

    .line 124
    :cond_a5
    return-void
.end method

.method public static blacklist enforceMaxComponentNameLength(Landroid/content/ComponentName;)V
    .registers 3
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 130
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxPackageNameLength(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "componentName"

    invoke-static {v0, v1}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxStringLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static blacklist enforceMaxPackageNameLength(Ljava/lang/String;)V
    .registers 3
    .param p0, "pkg"    # Ljava/lang/String;

    .line 61
    nop

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xdf

    if-gt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 61
    :goto_c
    const-string v1, "Package name too long"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 63
    return-void
.end method

.method public static blacklist enforceMaxStringLength(Landroid/os/PersistableBundle;Ljava/lang/String;)V
    .registers 13
    .param p0, "bundle"    # Landroid/os/PersistableBundle;
    .param p1, "argName"    # Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 71
    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/os/PersistableBundle;>;"
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 72
    :goto_8
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_93

    .line 73
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 74
    .local v1, "current":Landroid/os/PersistableBundle;
    invoke-virtual {v1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 75
    .local v3, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "key in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxStringLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 77
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    const-string/jumbo v6, "string value in "

    if-eqz v5, :cond_62

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 78
    .local v5, "str":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxStringLength(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    .line 79
    .end local v5    # "str":Ljava/lang/String;
    :cond_62
    instance-of v5, v4, [Ljava/lang/String;

    if-eqz v5, :cond_86

    move-object v5, v4

    check-cast v5, [Ljava/lang/String;

    .line 80
    .local v5, "strArray":[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x0

    :goto_6b
    if-ge v8, v7, :cond_90

    aget-object v9, v5, v8

    .line 81
    .local v9, "str":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxStringLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v9    # "str":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_6b

    .line 83
    .end local v5    # "strArray":[Ljava/lang/String;
    :cond_86
    instance-of v5, v4, Landroid/os/PersistableBundle;

    if-eqz v5, :cond_90

    move-object v5, v4

    check-cast v5, Landroid/os/PersistableBundle;

    .line 84
    .local v5, "persistableBundle":Landroid/os/PersistableBundle;
    invoke-interface {v0, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "persistableBundle":Landroid/os/PersistableBundle;
    :cond_90
    :goto_90
    goto :goto_1c

    .line 87
    .end local v1    # "current":Landroid/os/PersistableBundle;
    :cond_91
    goto/16 :goto_8

    .line 88
    :cond_93
    return-void
.end method

.method public static blacklist enforceMaxStringLength(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "argName"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0}, Lcom/android/modules/utils/ModifiedUtf8;->countBytes(Ljava/lang/String;Z)J
    :try_end_4
    .catch Ljava/io/UTFDataFormatException; {:try_start_1 .. :try_end_4} :catch_6

    .line 54
    nop

    .line 55
    return-void

    .line 52
    :catch_6
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/UTFDataFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " too long"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist truncateIfLonger(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "maxLength"    # I

    .line 138
    if-eqz p0, :cond_f

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt v0, p1, :cond_9

    goto :goto_f

    .line 140
    :cond_9
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_10

    .line 139
    :cond_f
    :goto_f
    move-object v0, p0

    .line 138
    :goto_10
    return-object v0
.end method
