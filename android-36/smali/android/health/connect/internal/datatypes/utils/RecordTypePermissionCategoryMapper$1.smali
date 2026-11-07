.class Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;
.super Landroid/util/SparseIntArray;
.source "RecordTypePermissionCategoryMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper;->populateDataTypeHealthPermissionCategoryMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 17

    .line 79
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 81
    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 82
    const/16 v3, 0xb

    const/16 v4, 0x1d

    invoke-virtual {v0, v3, v4}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 83
    const/16 v5, 0x10

    const/16 v6, 0x9

    invoke-virtual {v0, v5, v6}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 86
    const/16 v5, 0xc

    const/4 v7, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 89
    const/16 v8, 0xd

    const/16 v9, 0x24

    invoke-virtual {v0, v8, v9}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 90
    const/16 v10, 0xe

    const/16 v11, 0x25

    invoke-virtual {v0, v10, v11}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 91
    const/16 v10, 0xf

    invoke-virtual {v0, v10, v2}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 92
    const/4 v12, 0x7

    const/4 v13, 0x2

    invoke-virtual {v0, v12, v13}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 93
    const/16 v14, 0x8

    invoke-virtual {v0, v2, v14}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 96
    const/16 v2, 0x23

    invoke-virtual {v0, v6, v2}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 99
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v6}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 100
    const/4 v6, 0x3

    invoke-virtual {v0, v7, v6}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 103
    invoke-virtual {v0, v13, v1}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 106
    const/16 v1, 0x17

    invoke-virtual {v0, v6, v1}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 107
    const/16 v6, 0x18

    invoke-virtual {v0, v14, v6}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 108
    const/16 v13, 0x14

    const/16 v14, 0x21

    invoke-virtual {v0, v13, v14}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 111
    const/16 v15, 0x1a

    const/16 v7, 0x19

    invoke-virtual {v0, v7, v15}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 112
    const/16 v15, 0x1b

    invoke-virtual {v0, v1, v15}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 113
    const/16 v1, 0x11

    const/16 v15, 0xa

    invoke-virtual {v0, v1, v15}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 114
    const/16 v1, 0x1c

    invoke-virtual {v0, v4, v1}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 117
    const/16 v1, 0x20

    invoke-virtual {v0, v1, v5}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 118
    const/16 v1, 0x12

    invoke-virtual {v0, v1, v12}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 119
    const/16 v1, 0x13

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v4}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 120
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v13}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 121
    const/16 v1, 0x16

    const/16 v4, 0x1f

    invoke-virtual {v0, v1, v4}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 124
    const/16 v1, 0x1e

    const/16 v4, 0x15

    invoke-virtual {v0, v1, v4}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 125
    const/16 v1, 0x1b

    invoke-virtual {v0, v1, v10}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 126
    const/16 v1, 0x1c

    const/16 v4, 0x16

    invoke-virtual {v0, v1, v4}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 127
    const/16 v1, 0x1f

    const/16 v4, 0x20

    invoke-virtual {v0, v1, v4}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 130
    const/16 v1, 0x22

    invoke-virtual {v0, v14, v1}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 133
    const/16 v1, 0x27

    const/16 v4, 0x27

    invoke-virtual {v0, v1, v4}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 136
    invoke-virtual {v0, v6, v8}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 137
    const/16 v1, 0x1a

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v4}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 138
    const/16 v1, 0x22

    invoke-virtual {v0, v1, v3}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 139
    const/16 v1, 0x1e

    invoke-virtual {v0, v2, v1}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 142
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v13}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 143
    const/16 v1, 0x26

    invoke-virtual {v0, v9, v1}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 146
    const/4 v1, 0x4

    invoke-virtual {v0, v11, v1}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 147
    const/16 v1, 0x28

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 150
    const/16 v1, 0x26

    invoke-virtual {v0, v1, v7}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 151
    const/16 v1, 0x29

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/utils/RecordTypePermissionCategoryMapper$1;->put(II)V

    .line 152
    return-void
.end method
