.class synthetic Lcom/android/framework/protobuf/FieldSet$1;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/FieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

.field static final synthetic blacklist $SwitchMap$com$google$protobuf$WireFormat$JavaType:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 651
    invoke-static {}, Lcom/android/framework/protobuf/WireFormat$FieldType;->values()[Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v3, Lcom/android/framework/protobuf/WireFormat$FieldType;->FLOAT:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    :goto_23
    const/4 v2, 0x3

    :try_start_24
    sget-object v3, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v4, Lcom/android/framework/protobuf/WireFormat$FieldType;->INT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v3

    :goto_30
    const/4 v3, 0x4

    :try_start_31
    sget-object v4, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v5, Lcom/android/framework/protobuf/WireFormat$FieldType;->UINT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v5}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v4

    :goto_3d
    const/4 v4, 0x5

    :try_start_3e
    sget-object v5, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v6, Lcom/android/framework/protobuf/WireFormat$FieldType;->INT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v6}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v5

    :goto_4a
    const/4 v5, 0x6

    :try_start_4b
    sget-object v6, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v7, Lcom/android/framework/protobuf/WireFormat$FieldType;->FIXED64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v7}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v6

    :goto_57
    const/4 v6, 0x7

    :try_start_58
    sget-object v7, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v8, Lcom/android/framework/protobuf/WireFormat$FieldType;->FIXED32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v8}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_62} :catch_63

    goto :goto_64

    :catch_63
    move-exception v7

    :goto_64
    const/16 v7, 0x8

    :try_start_66
    sget-object v8, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v9, Lcom/android/framework/protobuf/WireFormat$FieldType;->BOOL:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v9}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_70} :catch_71

    goto :goto_72

    :catch_71
    move-exception v8

    :goto_72
    const/16 v8, 0x9

    :try_start_74
    sget-object v9, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/android/framework/protobuf/WireFormat$FieldType;->GROUP:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_7e} :catch_7f

    goto :goto_80

    :catch_7f
    move-exception v9

    :goto_80
    :try_start_80
    sget-object v9, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/android/framework/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0xa

    aput v11, v9, v10
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8c} :catch_8d

    goto :goto_8e

    :catch_8d
    move-exception v9

    :goto_8e
    :try_start_8e
    sget-object v9, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/android/framework/protobuf/WireFormat$FieldType;->STRING:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0xb

    aput v11, v9, v10
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_9a} :catch_9b

    goto :goto_9c

    :catch_9b
    move-exception v9

    :goto_9c
    :try_start_9c
    sget-object v9, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/android/framework/protobuf/WireFormat$FieldType;->BYTES:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0xc

    aput v11, v9, v10
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a9

    goto :goto_aa

    :catch_a9
    move-exception v9

    :goto_aa
    :try_start_aa
    sget-object v9, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/android/framework/protobuf/WireFormat$FieldType;->UINT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0xd

    aput v11, v9, v10
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_b7

    goto :goto_b8

    :catch_b7
    move-exception v9

    :goto_b8
    :try_start_b8
    sget-object v9, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/android/framework/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0xe

    aput v11, v9, v10
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_c4} :catch_c5

    goto :goto_c6

    :catch_c5
    move-exception v9

    :goto_c6
    :try_start_c6
    sget-object v9, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/android/framework/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0xf

    aput v11, v9, v10
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_d2} :catch_d3

    goto :goto_d4

    :catch_d3
    move-exception v9

    :goto_d4
    :try_start_d4
    sget-object v9, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/android/framework/protobuf/WireFormat$FieldType;->SINT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0x10

    aput v11, v9, v10
    :try_end_e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_e0} :catch_e1

    goto :goto_e2

    :catch_e1
    move-exception v9

    :goto_e2
    :try_start_e2
    sget-object v9, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/android/framework/protobuf/WireFormat$FieldType;->SINT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0x11

    aput v11, v9, v10
    :try_end_ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e2 .. :try_end_ee} :catch_ef

    goto :goto_f0

    :catch_ef
    move-exception v9

    :goto_f0
    :try_start_f0
    sget-object v9, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lcom/android/framework/protobuf/WireFormat$FieldType;->ENUM:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0x12

    aput v11, v9, v10
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fc} :catch_fd

    goto :goto_fe

    :catch_fd
    move-exception v9

    .line 414
    :goto_fe
    invoke-static {}, Lcom/android/framework/protobuf/WireFormat$JavaType;->values()[Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    :try_start_107
    sget-object v9, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v10, Lcom/android/framework/protobuf/WireFormat$JavaType;->INT:Lcom/android/framework/protobuf/WireFormat$JavaType;

    invoke-virtual {v10}, Lcom/android/framework/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_111
    .catch Ljava/lang/NoSuchFieldError; {:try_start_107 .. :try_end_111} :catch_112

    goto :goto_113

    :catch_112
    move-exception v0

    :goto_113
    :try_start_113
    sget-object v0, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v9, Lcom/android/framework/protobuf/WireFormat$JavaType;->LONG:Lcom/android/framework/protobuf/WireFormat$JavaType;

    invoke-virtual {v9}, Lcom/android/framework/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v9

    aput v1, v0, v9
    :try_end_11d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_113 .. :try_end_11d} :catch_11e

    goto :goto_11f

    :catch_11e
    move-exception v0

    :goto_11f
    :try_start_11f
    sget-object v0, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$JavaType;->FLOAT:Lcom/android/framework/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_12a

    goto :goto_12b

    :catch_12a
    move-exception v0

    :goto_12b
    :try_start_12b
    sget-object v0, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_135
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12b .. :try_end_135} :catch_136

    goto :goto_137

    :catch_136
    move-exception v0

    :goto_137
    :try_start_137
    sget-object v0, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/android/framework/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_141
    .catch Ljava/lang/NoSuchFieldError; {:try_start_137 .. :try_end_141} :catch_142

    goto :goto_143

    :catch_142
    move-exception v0

    :goto_143
    :try_start_143
    sget-object v0, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$JavaType;->STRING:Lcom/android/framework/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_14d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_143 .. :try_end_14d} :catch_14e

    goto :goto_14f

    :catch_14e
    move-exception v0

    :goto_14f
    :try_start_14f
    sget-object v0, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/android/framework/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_159
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14f .. :try_end_159} :catch_15a

    goto :goto_15b

    :catch_15a
    move-exception v0

    :goto_15b
    :try_start_15b
    sget-object v0, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$JavaType;->ENUM:Lcom/android/framework/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_165
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15b .. :try_end_165} :catch_166

    goto :goto_167

    :catch_166
    move-exception v0

    :goto_167
    :try_start_167
    sget-object v0, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_171
    .catch Ljava/lang/NoSuchFieldError; {:try_start_167 .. :try_end_171} :catch_172

    goto :goto_173

    :catch_172
    move-exception v0

    :goto_173
    return-void
.end method
