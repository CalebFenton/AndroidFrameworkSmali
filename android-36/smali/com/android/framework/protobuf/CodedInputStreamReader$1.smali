.class synthetic Lcom/android/framework/protobuf/CodedInputStreamReader$1;
.super Ljava/lang/Object;
.source "CodedInputStreamReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/CodedInputStreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$google$protobuf$WireFormat$FieldType:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1304
    invoke-static {}, Lcom/android/framework/protobuf/WireFormat$FieldType;->values()[Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    :try_start_9
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->BOOL:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->BYTES:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->ENUM:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    :try_start_3d
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->FIXED32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v0

    :goto_4a
    :try_start_4a
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->FIXED64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v0

    :goto_57
    :try_start_57
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->FLOAT:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_62} :catch_63

    goto :goto_64

    :catch_63
    move-exception v0

    :goto_64
    :try_start_64
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->INT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_70} :catch_71

    goto :goto_72

    :catch_71
    move-exception v0

    :goto_72
    :try_start_72
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->INT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_7e} :catch_7f

    goto :goto_80

    :catch_7f
    move-exception v0

    :goto_80
    :try_start_80
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8c} :catch_8d

    goto :goto_8e

    :catch_8d
    move-exception v0

    :goto_8e
    :try_start_8e
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_9a} :catch_9b

    goto :goto_9c

    :catch_9b
    move-exception v0

    :goto_9c
    :try_start_9c
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a9

    goto :goto_aa

    :catch_a9
    move-exception v0

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->SINT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_b7

    goto :goto_b8

    :catch_b7
    move-exception v0

    :goto_b8
    :try_start_b8
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->SINT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_c4} :catch_c5

    goto :goto_c6

    :catch_c5
    move-exception v0

    :goto_c6
    :try_start_c6
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->STRING:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_d2} :catch_d3

    goto :goto_d4

    :catch_d3
    move-exception v0

    :goto_d4
    :try_start_d4
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->UINT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_e0} :catch_e1

    goto :goto_e2

    :catch_e1
    move-exception v0

    :goto_e2
    :try_start_e2
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->UINT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e2 .. :try_end_ee} :catch_ef

    goto :goto_f0

    :catch_ef
    move-exception v0

    :goto_f0
    return-void
.end method
