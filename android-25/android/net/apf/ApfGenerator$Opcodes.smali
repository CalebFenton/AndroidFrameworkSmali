.class final enum Landroid/net/apf/ApfGenerator$Opcodes;
.super Ljava/lang/Enum;
.source "ApfGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Opcodes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/apf/ApfGenerator$Opcodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum ADD:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum AND:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum DIV:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum EXT:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum JEQ:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum JGT:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum JLT:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum JMP:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum JNE:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum JNEBS:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum JSET:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum LDB:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum LDBX:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum LDH:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum LDHX:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum LDW:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum LDWX:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum LI:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum MUL:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum OR:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum SH:Landroid/net/apf/ApfGenerator$Opcodes;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x5

    #@1
    const/4 v7, 0x4

    #@2
    const/4 v6, 0x3

    #@3
    const/4 v5, 0x2

    #@4
    const/4 v4, 0x1

    #@5
    .line 40
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@7
    const-string/jumbo v1, "LABEL"

    #@a
    const/4 v2, 0x0

    #@b
    const/4 v3, -0x1

    #@c
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@f
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    #@11
    .line 41
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@13
    const-string/jumbo v1, "LDB"

    #@16
    invoke-direct {v0, v1, v4, v4}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@19
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->LDB:Landroid/net/apf/ApfGenerator$Opcodes;

    #@1b
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@1d
    const-string/jumbo v1, "LDH"

    #@20
    invoke-direct {v0, v1, v5, v5}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@23
    .line 42
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->LDH:Landroid/net/apf/ApfGenerator$Opcodes;

    #@25
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@27
    const-string/jumbo v1, "LDW"

    #@2a
    invoke-direct {v0, v1, v6, v6}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@2d
    .line 43
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->LDW:Landroid/net/apf/ApfGenerator$Opcodes;

    #@2f
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@31
    const-string/jumbo v1, "LDBX"

    #@34
    invoke-direct {v0, v1, v7, v7}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@37
    .line 44
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->LDBX:Landroid/net/apf/ApfGenerator$Opcodes;

    #@39
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@3b
    const-string/jumbo v1, "LDHX"

    #@3e
    invoke-direct {v0, v1, v8, v8}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@41
    .line 45
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->LDHX:Landroid/net/apf/ApfGenerator$Opcodes;

    #@43
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@45
    const-string/jumbo v1, "LDWX"

    #@48
    const/4 v2, 0x6

    #@49
    .line 46
    const/4 v3, 0x6

    #@4a
    .line 45
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@4d
    .line 46
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->LDWX:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4f
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@51
    const-string/jumbo v1, "ADD"

    #@54
    const/4 v2, 0x7

    #@55
    .line 47
    const/4 v3, 0x7

    #@56
    .line 46
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@59
    .line 47
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->ADD:Landroid/net/apf/ApfGenerator$Opcodes;

    #@5b
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@5d
    const-string/jumbo v1, "MUL"

    #@60
    const/16 v2, 0x8

    #@62
    .line 48
    const/16 v3, 0x8

    #@64
    .line 47
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@67
    .line 48
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->MUL:Landroid/net/apf/ApfGenerator$Opcodes;

    #@69
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@6b
    const-string/jumbo v1, "DIV"

    #@6e
    const/16 v2, 0x9

    #@70
    .line 49
    const/16 v3, 0x9

    #@72
    .line 48
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@75
    .line 49
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->DIV:Landroid/net/apf/ApfGenerator$Opcodes;

    #@77
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@79
    const-string/jumbo v1, "AND"

    #@7c
    const/16 v2, 0xa

    #@7e
    .line 50
    const/16 v3, 0xa

    #@80
    .line 49
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@83
    .line 50
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->AND:Landroid/net/apf/ApfGenerator$Opcodes;

    #@85
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@87
    const-string/jumbo v1, "OR"

    #@8a
    const/16 v2, 0xb

    #@8c
    .line 51
    const/16 v3, 0xb

    #@8e
    .line 50
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@91
    .line 51
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->OR:Landroid/net/apf/ApfGenerator$Opcodes;

    #@93
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@95
    const-string/jumbo v1, "SH"

    #@98
    const/16 v2, 0xc

    #@9a
    .line 52
    const/16 v3, 0xc

    #@9c
    .line 51
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@9f
    .line 52
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->SH:Landroid/net/apf/ApfGenerator$Opcodes;

    #@a1
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@a3
    const-string/jumbo v1, "LI"

    #@a6
    const/16 v2, 0xd

    #@a8
    .line 53
    const/16 v3, 0xd

    #@aa
    .line 52
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@ad
    .line 53
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->LI:Landroid/net/apf/ApfGenerator$Opcodes;

    #@af
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@b1
    const-string/jumbo v1, "JMP"

    #@b4
    const/16 v2, 0xe

    #@b6
    .line 54
    const/16 v3, 0xe

    #@b8
    .line 53
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@bb
    .line 54
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->JMP:Landroid/net/apf/ApfGenerator$Opcodes;

    #@bd
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@bf
    const-string/jumbo v1, "JEQ"

    #@c2
    const/16 v2, 0xf

    #@c4
    .line 55
    const/16 v3, 0xf

    #@c6
    .line 54
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@c9
    .line 55
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->JEQ:Landroid/net/apf/ApfGenerator$Opcodes;

    #@cb
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@cd
    const-string/jumbo v1, "JNE"

    #@d0
    const/16 v2, 0x10

    #@d2
    .line 56
    const/16 v3, 0x10

    #@d4
    .line 55
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@d7
    .line 56
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->JNE:Landroid/net/apf/ApfGenerator$Opcodes;

    #@d9
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@db
    const-string/jumbo v1, "JGT"

    #@de
    const/16 v2, 0x11

    #@e0
    .line 57
    const/16 v3, 0x11

    #@e2
    .line 56
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@e5
    .line 57
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->JGT:Landroid/net/apf/ApfGenerator$Opcodes;

    #@e7
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@e9
    const-string/jumbo v1, "JLT"

    #@ec
    const/16 v2, 0x12

    #@ee
    .line 58
    const/16 v3, 0x12

    #@f0
    .line 57
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@f3
    .line 58
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->JLT:Landroid/net/apf/ApfGenerator$Opcodes;

    #@f5
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@f7
    const-string/jumbo v1, "JSET"

    #@fa
    const/16 v2, 0x13

    #@fc
    .line 59
    const/16 v3, 0x13

    #@fe
    .line 58
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@101
    .line 59
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->JSET:Landroid/net/apf/ApfGenerator$Opcodes;

    #@103
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@105
    const-string/jumbo v1, "JNEBS"

    #@108
    const/16 v2, 0x14

    #@10a
    .line 60
    const/16 v3, 0x14

    #@10c
    .line 59
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@10f
    .line 60
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->JNEBS:Landroid/net/apf/ApfGenerator$Opcodes;

    #@111
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@113
    const-string/jumbo v1, "EXT"

    #@116
    const/16 v2, 0x15

    #@118
    .line 61
    const/16 v3, 0x15

    #@11a
    .line 60
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    #@11d
    .line 61
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    #@11f
    .line 39
    const/16 v0, 0x16

    #@121
    new-array v0, v0, [Landroid/net/apf/ApfGenerator$Opcodes;

    #@123
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    #@125
    const/4 v2, 0x0

    #@126
    aput-object v1, v0, v2

    #@128
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDB:Landroid/net/apf/ApfGenerator$Opcodes;

    #@12a
    aput-object v1, v0, v4

    #@12c
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDH:Landroid/net/apf/ApfGenerator$Opcodes;

    #@12e
    aput-object v1, v0, v5

    #@130
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDW:Landroid/net/apf/ApfGenerator$Opcodes;

    #@132
    aput-object v1, v0, v6

    #@134
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDBX:Landroid/net/apf/ApfGenerator$Opcodes;

    #@136
    aput-object v1, v0, v7

    #@138
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDHX:Landroid/net/apf/ApfGenerator$Opcodes;

    #@13a
    aput-object v1, v0, v8

    #@13c
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDWX:Landroid/net/apf/ApfGenerator$Opcodes;

    #@13e
    const/4 v2, 0x6

    #@13f
    aput-object v1, v0, v2

    #@141
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->ADD:Landroid/net/apf/ApfGenerator$Opcodes;

    #@143
    const/4 v2, 0x7

    #@144
    aput-object v1, v0, v2

    #@146
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->MUL:Landroid/net/apf/ApfGenerator$Opcodes;

    #@148
    const/16 v2, 0x8

    #@14a
    aput-object v1, v0, v2

    #@14c
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->DIV:Landroid/net/apf/ApfGenerator$Opcodes;

    #@14e
    const/16 v2, 0x9

    #@150
    aput-object v1, v0, v2

    #@152
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->AND:Landroid/net/apf/ApfGenerator$Opcodes;

    #@154
    const/16 v2, 0xa

    #@156
    aput-object v1, v0, v2

    #@158
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->OR:Landroid/net/apf/ApfGenerator$Opcodes;

    #@15a
    const/16 v2, 0xb

    #@15c
    aput-object v1, v0, v2

    #@15e
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->SH:Landroid/net/apf/ApfGenerator$Opcodes;

    #@160
    const/16 v2, 0xc

    #@162
    aput-object v1, v0, v2

    #@164
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LI:Landroid/net/apf/ApfGenerator$Opcodes;

    #@166
    const/16 v2, 0xd

    #@168
    aput-object v1, v0, v2

    #@16a
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JMP:Landroid/net/apf/ApfGenerator$Opcodes;

    #@16c
    const/16 v2, 0xe

    #@16e
    aput-object v1, v0, v2

    #@170
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JEQ:Landroid/net/apf/ApfGenerator$Opcodes;

    #@172
    const/16 v2, 0xf

    #@174
    aput-object v1, v0, v2

    #@176
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNE:Landroid/net/apf/ApfGenerator$Opcodes;

    #@178
    const/16 v2, 0x10

    #@17a
    aput-object v1, v0, v2

    #@17c
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JGT:Landroid/net/apf/ApfGenerator$Opcodes;

    #@17e
    const/16 v2, 0x11

    #@180
    aput-object v1, v0, v2

    #@182
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JLT:Landroid/net/apf/ApfGenerator$Opcodes;

    #@184
    const/16 v2, 0x12

    #@186
    aput-object v1, v0, v2

    #@188
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JSET:Landroid/net/apf/ApfGenerator$Opcodes;

    #@18a
    const/16 v2, 0x13

    #@18c
    aput-object v1, v0, v2

    #@18e
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNEBS:Landroid/net/apf/ApfGenerator$Opcodes;

    #@190
    const/16 v2, 0x14

    #@192
    aput-object v1, v0, v2

    #@194
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    #@196
    const/16 v2, 0x15

    #@198
    aput-object v1, v0, v2

    #@19a
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->$VALUES:[Landroid/net/apf/ApfGenerator$Opcodes;

    #@19c
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    #@0
    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 66
    iput p3, p0, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    #@5
    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/apf/ApfGenerator$Opcodes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    const-class v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/net/apf/ApfGenerator$Opcodes;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/net/apf/ApfGenerator$Opcodes;
    .locals 1

    #@0
    .prologue
    .line 39
    sget-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->$VALUES:[Landroid/net/apf/ApfGenerator$Opcodes;

    #@2
    return-object v0
.end method
