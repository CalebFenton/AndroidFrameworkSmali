.class public final enum Ldalvik/system/profiler/BinaryHprof$Tag;
.super Ljava/lang/Enum;
.source "BinaryHprof.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/BinaryHprof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldalvik/system/profiler/BinaryHprof$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldalvik/system/profiler/BinaryHprof$Tag;

.field public static final enum ALLOC_SITES:Ldalvik/system/profiler/BinaryHprof$Tag;

.field private static final BYTE_TO_TAG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ldalvik/system/profiler/BinaryHprof$Tag;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CONTROL_SETTINGS:Ldalvik/system/profiler/BinaryHprof$Tag;

.field public static final enum CPU_SAMPLES:Ldalvik/system/profiler/BinaryHprof$Tag;

.field public static final enum END_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

.field public static final enum HEAP_DUMP:Ldalvik/system/profiler/BinaryHprof$Tag;

.field public static final enum HEAP_DUMP_END:Ldalvik/system/profiler/BinaryHprof$Tag;

.field public static final enum HEAP_DUMP_SEGMENT:Ldalvik/system/profiler/BinaryHprof$Tag;

.field public static final enum HEAP_SUMMARY:Ldalvik/system/profiler/BinaryHprof$Tag;

.field public static final enum LOAD_CLASS:Ldalvik/system/profiler/BinaryHprof$Tag;

.field public static final enum STACK_FRAME:Ldalvik/system/profiler/BinaryHprof$Tag;

.field public static final enum STACK_TRACE:Ldalvik/system/profiler/BinaryHprof$Tag;

.field public static final enum START_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

.field public static final enum STRING_IN_UTF8:Ldalvik/system/profiler/BinaryHprof$Tag;

.field public static final enum UNLOAD_CLASS:Ldalvik/system/profiler/BinaryHprof$Tag;


# instance fields
.field public final maximumSize:I

.field public final minimumSize:I

.field public final tag:B


# direct methods
.method static constructor <clinit>()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v8, 0x6

    #@3
    const/4 v7, 0x4

    #@4
    const/4 v1, 0x0

    #@5
    .line 64
    new-instance v2, Ldalvik/system/profiler/BinaryHprof$Tag;

    #@7
    const-string/jumbo v3, "STRING_IN_UTF8"

    #@a
    const/4 v4, -0x4

    #@b
    invoke-direct {v2, v3, v1, v9, v4}, Ldalvik/system/profiler/BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    #@e
    sput-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->STRING_IN_UTF8:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@10
    .line 65
    new-instance v2, Ldalvik/system/profiler/BinaryHprof$Tag;

    #@12
    const-string/jumbo v3, "LOAD_CLASS"

    #@15
    const/16 v4, 0x10

    #@17
    invoke-direct {v2, v3, v9, v10, v4}, Ldalvik/system/profiler/BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    #@1a
    sput-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->LOAD_CLASS:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@1c
    .line 66
    new-instance v2, Ldalvik/system/profiler/BinaryHprof$Tag;

    #@1e
    const-string/jumbo v3, "UNLOAD_CLASS"

    #@21
    const/4 v4, 0x3

    #@22
    invoke-direct {v2, v3, v10, v4, v7}, Ldalvik/system/profiler/BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    #@25
    sput-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->UNLOAD_CLASS:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@27
    .line 67
    new-instance v2, Ldalvik/system/profiler/BinaryHprof$Tag;

    #@29
    const-string/jumbo v3, "STACK_FRAME"

    #@2c
    const/4 v4, 0x3

    #@2d
    const/16 v5, 0x18

    #@2f
    invoke-direct {v2, v3, v4, v7, v5}, Ldalvik/system/profiler/BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    #@32
    sput-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->STACK_FRAME:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@34
    .line 68
    new-instance v2, Ldalvik/system/profiler/BinaryHprof$Tag;

    #@36
    const-string/jumbo v3, "STACK_TRACE"

    #@39
    const/4 v4, 0x5

    #@3a
    const/16 v5, -0xc

    #@3c
    invoke-direct {v2, v3, v7, v4, v5}, Ldalvik/system/profiler/BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    #@3f
    sput-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->STACK_TRACE:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@41
    .line 69
    new-instance v2, Ldalvik/system/profiler/BinaryHprof$Tag;

    #@43
    const-string/jumbo v3, "ALLOC_SITES"

    #@46
    const/4 v4, 0x5

    #@47
    const/16 v5, -0x22

    #@49
    invoke-direct {v2, v3, v4, v8, v5}, Ldalvik/system/profiler/BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    #@4c
    sput-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->ALLOC_SITES:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@4e
    .line 70
    new-instance v2, Ldalvik/system/profiler/BinaryHprof$Tag;

    #@50
    const-string/jumbo v3, "HEAP_SUMMARY"

    #@53
    const/4 v4, 0x7

    #@54
    const/16 v5, 0x18

    #@56
    invoke-direct {v2, v3, v8, v4, v5}, Ldalvik/system/profiler/BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    #@59
    sput-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->HEAP_SUMMARY:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@5b
    .line 71
    new-instance v2, Ldalvik/system/profiler/BinaryHprof$Tag;

    #@5d
    const-string/jumbo v3, "START_THREAD"

    #@60
    const/4 v4, 0x7

    #@61
    const/16 v5, 0xa

    #@63
    const/16 v6, 0x18

    #@65
    invoke-direct {v2, v3, v4, v5, v6}, Ldalvik/system/profiler/BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    #@68
    sput-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->START_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@6a
    .line 72
    new-instance v2, Ldalvik/system/profiler/BinaryHprof$Tag;

    #@6c
    const-string/jumbo v3, "END_THREAD"

    #@6f
    const/16 v4, 0x8

    #@71
    const/16 v5, 0xb

    #@73
    invoke-direct {v2, v3, v4, v5, v7}, Ldalvik/system/profiler/BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    #@76
    sput-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->END_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@78
    .line 73
    new-instance v2, Ldalvik/system/profiler/BinaryHprof$Tag;

    #@7a
    const-string/jumbo v3, "HEAP_DUMP"

    #@7d
    const/16 v4, 0x9

    #@7f
    const/16 v5, 0xc

    #@81
    invoke-direct {v2, v3, v4, v5, v1}, Ldalvik/system/profiler/BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    #@84
    sput-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->HEAP_DUMP:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@86
    .line 74
    new-instance v2, Ldalvik/system/profiler/BinaryHprof$Tag;

    #@88
    const-string/jumbo v3, "HEAP_DUMP_SEGMENT"

    #@8b
    const/16 v4, 0xa

    #@8d
    const/16 v5, 0x1c

    #@8f
    invoke-direct {v2, v3, v4, v5, v1}, Ldalvik/system/profiler/BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    #@92
    sput-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->HEAP_DUMP_SEGMENT:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@94
    .line 75
    new-instance v2, Ldalvik/system/profiler/BinaryHprof$Tag;

    #@96
    const-string/jumbo v3, "HEAP_DUMP_END"

    #@99
    const/16 v4, 0xb

    #@9b
    const/16 v5, 0x2c

    #@9d
    invoke-direct {v2, v3, v4, v5, v1}, Ldalvik/system/profiler/BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    #@a0
    sput-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->HEAP_DUMP_END:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@a2
    .line 76
    new-instance v2, Ldalvik/system/profiler/BinaryHprof$Tag;

    #@a4
    const-string/jumbo v3, "CPU_SAMPLES"

    #@a7
    const/16 v4, 0xc

    #@a9
    const/16 v5, 0xd

    #@ab
    const/4 v6, -0x8

    #@ac
    invoke-direct {v2, v3, v4, v5, v6}, Ldalvik/system/profiler/BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    #@af
    sput-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->CPU_SAMPLES:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@b1
    .line 77
    new-instance v2, Ldalvik/system/profiler/BinaryHprof$Tag;

    #@b3
    const-string/jumbo v3, "CONTROL_SETTINGS"

    #@b6
    const/16 v4, 0xd

    #@b8
    const/16 v5, 0xe

    #@ba
    invoke-direct {v2, v3, v4, v5, v8}, Ldalvik/system/profiler/BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    #@bd
    sput-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->CONTROL_SETTINGS:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@bf
    .line 62
    const/16 v2, 0xe

    #@c1
    new-array v2, v2, [Ldalvik/system/profiler/BinaryHprof$Tag;

    #@c3
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->STRING_IN_UTF8:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@c5
    aput-object v3, v2, v1

    #@c7
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->LOAD_CLASS:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@c9
    aput-object v3, v2, v9

    #@cb
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->UNLOAD_CLASS:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@cd
    aput-object v3, v2, v10

    #@cf
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->STACK_FRAME:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@d1
    const/4 v4, 0x3

    #@d2
    aput-object v3, v2, v4

    #@d4
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->STACK_TRACE:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@d6
    aput-object v3, v2, v7

    #@d8
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->ALLOC_SITES:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@da
    const/4 v4, 0x5

    #@db
    aput-object v3, v2, v4

    #@dd
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->HEAP_SUMMARY:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@df
    aput-object v3, v2, v8

    #@e1
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->START_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@e3
    const/4 v4, 0x7

    #@e4
    aput-object v3, v2, v4

    #@e6
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->END_THREAD:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@e8
    const/16 v4, 0x8

    #@ea
    aput-object v3, v2, v4

    #@ec
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->HEAP_DUMP:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@ee
    const/16 v4, 0x9

    #@f0
    aput-object v3, v2, v4

    #@f2
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->HEAP_DUMP_SEGMENT:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@f4
    const/16 v4, 0xa

    #@f6
    aput-object v3, v2, v4

    #@f8
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->HEAP_DUMP_END:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@fa
    const/16 v4, 0xb

    #@fc
    aput-object v3, v2, v4

    #@fe
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->CPU_SAMPLES:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@100
    const/16 v4, 0xc

    #@102
    aput-object v3, v2, v4

    #@104
    sget-object v3, Ldalvik/system/profiler/BinaryHprof$Tag;->CONTROL_SETTINGS:Ldalvik/system/profiler/BinaryHprof$Tag;

    #@106
    const/16 v4, 0xd

    #@108
    aput-object v3, v2, v4

    #@10a
    sput-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->$VALUES:[Ldalvik/system/profiler/BinaryHprof$Tag;

    #@10c
    .line 105
    new-instance v2, Ljava/util/HashMap;

    #@10e
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@111
    .line 104
    sput-object v2, Ldalvik/system/profiler/BinaryHprof$Tag;->BYTE_TO_TAG:Ljava/util/Map;

    #@113
    .line 108
    invoke-static {}, Ldalvik/system/profiler/BinaryHprof$Tag;->values()[Ldalvik/system/profiler/BinaryHprof$Tag;

    #@116
    move-result-object v2

    #@117
    array-length v3, v2

    #@118
    .local v0, "v":Ldalvik/system/profiler/BinaryHprof$Tag;
    :goto_0
    if-ge v1, v3, :cond_0

    #@11a
    aget-object v0, v2, v1

    #@11c
    .line 109
    sget-object v4, Ldalvik/system/profiler/BinaryHprof$Tag;->BYTE_TO_TAG:Ljava/util/Map;

    #@11e
    iget-byte v5, v0, Ldalvik/system/profiler/BinaryHprof$Tag;->tag:B

    #@120
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@123
    move-result-object v5

    #@124
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@127
    .line 108
    add-int/lit8 v1, v1, 0x1

    #@129
    goto :goto_0

    #@12a
    .line 62
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 2
    .param p3, "tag"    # I
    .param p4, "size"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@4
    .line 92
    int-to-byte v0, p3

    #@5
    iput-byte v0, p0, Ldalvik/system/profiler/BinaryHprof$Tag;->tag:B

    #@7
    .line 93
    if-lez p4, :cond_0

    #@9
    .line 95
    iput p4, p0, Ldalvik/system/profiler/BinaryHprof$Tag;->minimumSize:I

    #@b
    .line 96
    iput p4, p0, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    #@d
    .line 91
    :goto_0
    return-void

    #@e
    .line 99
    :cond_0
    neg-int v0, p4

    #@f
    iput v0, p0, Ldalvik/system/profiler/BinaryHprof$Tag;->minimumSize:I

    #@11
    .line 100
    iput v1, p0, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    #@13
    goto :goto_0
.end method

.method public static get(B)Ldalvik/system/profiler/BinaryHprof$Tag;
    .locals 2
    .param p0, "tag"    # B

    #@0
    .prologue
    .line 114
    sget-object v0, Ldalvik/system/profiler/BinaryHprof$Tag;->BYTE_TO_TAG:Ljava/util/Map;

    #@2
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ldalvik/system/profiler/BinaryHprof$Tag;

    #@c
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ldalvik/system/profiler/BinaryHprof$Tag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 62
    const-class v0, Ldalvik/system/profiler/BinaryHprof$Tag;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ldalvik/system/profiler/BinaryHprof$Tag;

    #@8
    return-object v0
.end method

.method public static values()[Ldalvik/system/profiler/BinaryHprof$Tag;
    .locals 1

    #@0
    .prologue
    .line 62
    sget-object v0, Ldalvik/system/profiler/BinaryHprof$Tag;->$VALUES:[Ldalvik/system/profiler/BinaryHprof$Tag;

    #@2
    return-object v0
.end method


# virtual methods
.method public checkSize(I)Ljava/lang/String;
    .locals 2
    .param p1, "actual"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 122
    iget v0, p0, Ldalvik/system/profiler/BinaryHprof$Tag;->minimumSize:I

    #@3
    if-ge p1, v0, :cond_0

    #@5
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "expected a minimial record size of "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget v1, p0, Ldalvik/system/profiler/BinaryHprof$Tag;->minimumSize:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, " for "

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 124
    const-string/jumbo v1, " but received "

    #@25
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    return-object v0

    #@32
    .line 126
    :cond_0
    iget v0, p0, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    #@34
    if-nez v0, :cond_1

    #@36
    .line 127
    return-object v1

    #@37
    .line 129
    :cond_1
    iget v0, p0, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    #@39
    if-le p1, v0, :cond_2

    #@3b
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v1, "expected a maximum record size of "

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    iget v1, p0, Ldalvik/system/profiler/BinaryHprof$Tag;->maximumSize:I

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    const-string/jumbo v1, " for "

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    .line 131
    const-string/jumbo v1, " but received "

    #@5b
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    return-object v0

    #@68
    .line 133
    :cond_2
    return-object v1
.end method
