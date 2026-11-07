.class public Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;
.super Ljava/lang/Object;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForegroundServiceTypePermissions"
.end annotation


# instance fields
.field final blacklist mAllOf:Z

.field final blacklist mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;


# direct methods
.method public constructor blacklist <init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V
    .registers 3
    .param p1, "permissions"    # [Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
    .param p2, "allOf"    # Z

    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1074
    iput-object p1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    .line 1075
    iput-boolean p2, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mAllOf:Z

    .line 1076
    return-void
.end method


# virtual methods
.method public blacklist checkPermissions(Landroid/content/Context;IILjava/lang/String;Z)I
    .registers 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callerUid"    # I
    .param p3, "callerPid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "allowWhileInUse"    # Z

    .line 1084
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mAllOf:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_25

    .line 1085
    iget-object v1, v0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    array-length v4, v1

    move v5, v3

    :goto_c
    if-ge v5, v4, :cond_24

    aget-object v6, v1, v5

    .line 1086
    .local v6, "perm":Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v12

    .line 1088
    .local v12, "result":I
    if-eqz v12, :cond_21

    .line 1089
    return v2

    .line 1085
    .end local v6    # "perm":Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
    .end local v12    # "result":I
    :cond_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 1092
    :cond_24
    return v3

    .line 1094
    :cond_25
    const/4 v1, 0x0

    .line 1095
    .local v1, "anyOfGranted":Z
    iget-object v4, v0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    array-length v5, v4

    move v6, v3

    :goto_2a
    if-ge v6, v5, :cond_43

    aget-object v13, v4, v6

    .line 1096
    .local v13, "perm":Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v17, p4

    move/from16 v18, p5

    invoke-virtual/range {v13 .. v18}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v7

    .line 1098
    .local v7, "result":I
    if-nez v7, :cond_40

    .line 1099
    const/4 v1, 0x1

    .line 1100
    goto :goto_43

    .line 1095
    .end local v7    # "result":I
    .end local v13    # "perm":Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 1103
    :cond_43
    :goto_43
    if-eqz v1, :cond_46

    move v2, v3

    :cond_46
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1110
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "allOf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    iget-boolean v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mAllOf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1112
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1113
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    iget-object v2, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    array-length v2, v2

    if-ge v1, v2, :cond_34

    .line 1115
    if-lez v1, :cond_26

    .line 1116
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    :cond_26
    iget-object v2, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1120
    .end local v1    # "i":I
    :cond_34
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method blacklist toStringArray(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 1127
    iget-object v2, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->addToList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1126
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1129
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method
