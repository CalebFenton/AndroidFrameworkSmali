.class Ljava/lang/constant/ConstantUtils;
.super Ljava/lang/Object;
.source "ConstantUtils.java"


# static fields
.field static final blacklist EMPTY_CONSTABLE:[Ljava/lang/constant/Constable;

.field public static final blacklist EMPTY_CONSTANTDESC:[Ljava/lang/constant/ConstantDesc;

.field private static final blacklist JVM_SIGNATURE_ARRAY:C = '['

.field private static final blacklist JVM_SIGNATURE_BOOLEAN:C = 'Z'

.field private static final blacklist JVM_SIGNATURE_BYTE:C = 'B'

.field private static final blacklist JVM_SIGNATURE_CHAR:C = 'C'

.field private static final blacklist JVM_SIGNATURE_CLASS:C = 'L'

.field private static final blacklist JVM_SIGNATURE_DOUBLE:C = 'D'

.field private static final blacklist JVM_SIGNATURE_ENDCLASS:C = ';'

.field private static final blacklist JVM_SIGNATURE_ENDFUNC:C = ')'

.field private static final blacklist JVM_SIGNATURE_ENUM:C = 'E'

.field private static final blacklist JVM_SIGNATURE_FLOAT:C = 'F'

.field private static final blacklist JVM_SIGNATURE_FUNC:C = '('

.field private static final blacklist JVM_SIGNATURE_INT:C = 'I'

.field private static final blacklist JVM_SIGNATURE_LONG:C = 'J'

.field private static final blacklist JVM_SIGNATURE_SHORT:C = 'S'

.field private static final blacklist JVM_SIGNATURE_VOID:C = 'V'

.field static final blacklist MAX_ARRAY_TYPE_DESC_DIMENSIONS:I = 0xff

.field private static final blacklist pointyNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 38
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/constant/ConstantDesc;

    sput-object v1, Ljava/lang/constant/ConstantUtils;->EMPTY_CONSTANTDESC:[Ljava/lang/constant/ConstantDesc;

    .line 39
    new-array v0, v0, [Ljava/lang/constant/Constable;

    sput-object v0, Ljava/lang/constant/ConstantUtils;->EMPTY_CONSTABLE:[Ljava/lang/constant/Constable;

    .line 42
    const-string v0, "<init>"

    const-string v1, "<clinit>"

    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/ConstantUtils;->pointyNames:Ljava/util/Set;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist arrayDepth(Ljava/lang/String;)I
    .registers 4
    .param p0, "descriptorString"    # Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "depth":I
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_c

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_c
    return v0
.end method

.method static blacklist binaryToInternal(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 97
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist dropFirstAndLastChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist dropLastChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist internalToBinary(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 101
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist parseMethodDescriptor(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p0, "descriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    .local v0, "cur":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 122
    .local v1, "end":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v2, "ptypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "Bad method descriptor: "

    if-ge v0, v1, :cond_90

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x28

    if-ne v4, v5, :cond_90

    .line 127
    const/4 v4, 0x1

    add-int/2addr v0, v4

    .line 128
    :goto_18
    const/4 v5, 0x0

    if-ge v0, v1, :cond_4b

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x29

    if-eq v6, v7, :cond_4b

    .line 129
    invoke-static {p0, v0, v1, v5}, Ljava/lang/constant/ConstantUtils;->skipOverFieldSignature(Ljava/lang/String;IIZ)I

    move-result v5

    .line 130
    .local v5, "len":I
    if-eqz v5, :cond_34

    .line 132
    add-int v6, v0, v5

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/2addr v0, v5

    .line 134
    .end local v5    # "len":I
    goto :goto_18

    .line 131
    .restart local v5    # "len":I
    :cond_34
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 135
    .end local v5    # "len":I
    :cond_4b
    if-ge v0, v1, :cond_79

    .line 137
    add-int/2addr v0, v4

    .line 139
    invoke-static {p0, v0, v1, v4}, Ljava/lang/constant/ConstantUtils;->skipOverFieldSignature(Ljava/lang/String;IIZ)I

    move-result v4

    .line 140
    .local v4, "rLen":I
    if-eqz v4, :cond_62

    add-int v6, v0, v4

    if-ne v6, v1, :cond_62

    .line 142
    add-int v3, v0, v4

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 143
    return-object v2

    .line 141
    :cond_62
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 136
    .end local v4    # "rLen":I
    :cond_79
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    :cond_90
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static blacklist skipOverFieldSignature(Ljava/lang/String;IIZ)I
    .registers 11
    .param p0, "descriptor"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "voidOK"    # Z

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "arrayDim":I
    move v1, p1

    .line 176
    .local v1, "index":I
    :goto_2
    const/4 v2, 0x0

    if-ge v1, p2, :cond_54

    .line 177
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_56

    .line 212
    return v2

    .line 202
    :sswitch_d
    add-int/lit8 v0, v0, 0x1

    .line 203
    const/16 v2, 0xff

    if-gt v0, v2, :cond_17

    .line 208
    add-int/lit8 v1, v1, 0x1

    .line 209
    const/4 p3, 0x0

    .line 210
    goto :goto_2

    .line 204
    :cond_17
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 205
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 204
    const-string v4, "Cannot create an array type descriptor with more than %d dimensions"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    :sswitch_2b
    if-nez p3, :cond_4f

    return v1

    .line 190
    :sswitch_2e
    add-int/lit8 v1, v1, 0x1

    .line 191
    const/16 v3, 0x3b

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 192
    .local v3, "indexOfSemi":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4e

    .line 193
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "unqualifiedName":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/constant/ConstantUtils;->verifyUnqualifiedClassName(Ljava/lang/String;)Z

    move-result v5

    .line 195
    .local v5, "legal":Z
    if-nez v5, :cond_44

    .line 196
    return v2

    .line 198
    :cond_44
    sub-int v2, v1, p1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x1

    return v2

    .line 200
    .end local v4    # "unqualifiedName":Ljava/lang/String;
    .end local v5    # "legal":Z
    :cond_4e
    return v2

    .line 187
    .end local v3    # "indexOfSemi":I
    :cond_4f
    :sswitch_4f
    sub-int v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    return v2

    .line 215
    :cond_54
    return v2

    nop

    :sswitch_data_56
    .sparse-switch
        0x42 -> :sswitch_4f
        0x43 -> :sswitch_4f
        0x44 -> :sswitch_4f
        0x46 -> :sswitch_4f
        0x49 -> :sswitch_4f
        0x4a -> :sswitch_4f
        0x4c -> :sswitch_2e
        0x53 -> :sswitch_4f
        0x56 -> :sswitch_2b
        0x5a -> :sswitch_4f
        0x5b -> :sswitch_d
    .end sparse-switch
.end method

.method static blacklist validateBinaryClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 55
    .local v1, "ch":C
    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1a

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_1a

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1a

    .line 53
    .end local v1    # "ch":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    .restart local v1    # "ch":C
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid class name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    .end local v0    # "i":I
    .end local v1    # "ch":C
    :cond_33
    return-object p0
.end method

.method static blacklist validateClassOrInterface(Ljava/lang/constant/ClassDesc;)V
    .registers 4
    .param p0, "classDesc"    # Ljava/lang/constant/ClassDesc;

    .line 85
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->isClassOrInterface()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 87
    return-void

    .line 86
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a class or interface type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist validateMemberName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "method"    # Z

    .line 69
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6b

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6a

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 74
    .local v1, "ch":C
    const/16 v2, 0x2e

    const-string v3, "Invalid member name: "

    if-eq v1, v2, :cond_53

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_53

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_53

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_53

    .line 76
    if-eqz p1, :cond_50

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_30

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_50

    .line 77
    :cond_30
    sget-object v2, Ljava/lang/constant/ConstantUtils;->pointyNames:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_50

    .line 78
    :cond_39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    .end local v1    # "ch":C
    :cond_50
    :goto_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 75
    .restart local v1    # "ch":C
    :cond_53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    .end local v0    # "i":I
    .end local v1    # "ch":C
    :cond_6a
    return-object p0

    .line 71
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "zero-length member name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist verifyUnqualifiedClassName(Ljava/lang/String;)Z
    .registers 8
    .param p0, "name"    # Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_3a

    .line 220
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 221
    .local v1, "ch":C
    const/16 v3, 0x80

    if-ge v1, v3, :cond_36

    .line 222
    const/16 v3, 0x2e

    const/4 v4, 0x0

    if-eq v1, v3, :cond_35

    const/16 v3, 0x3b

    if-eq v1, v3, :cond_35

    const/16 v3, 0x5b

    if-ne v1, v3, :cond_1e

    goto :goto_35

    .line 225
    :cond_1e
    const/16 v3, 0x2f

    if-ne v1, v3, :cond_38

    .line 228
    if-eqz v0, :cond_34

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_34

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_38

    .line 229
    :cond_34
    return v4

    .line 223
    :cond_35
    :goto_35
    return v4

    .line 233
    :cond_36
    add-int/lit8 v0, v0, 0x1

    .line 219
    .end local v1    # "ch":C
    :cond_38
    add-int/2addr v0, v2

    goto :goto_1

    .line 236
    .end local v0    # "index":I
    :cond_3a
    return v2
.end method
