.class public Landroid/app/appsearch/GenericDocument;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/GenericDocument$Builder;
    }
.end annotation


# static fields
.field public static final blacklist EMPTY:Landroid/app/appsearch/GenericDocument;

.field private static final blacklist MAX_INDEXED_PROPERTIES:I = 0x10

.field public static final blacklist PARENT_TYPES_SYNTHETIC_PROPERTY:Ljava/lang/String; = "$$__AppSearch__parentTypes"

.field private static final blacklist TAG:Ljava/lang/String; = "AppSearchGenericDocumen"


# instance fields
.field private final blacklist mDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDocumentParcel(Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument;->mDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 2
    .line 3
    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/app/appsearch/GenericDocument$Builder;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1, v1, v1}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Landroid/app/appsearch/GenericDocument;->EMPTY:Landroid/app/appsearch/GenericDocument;

    .line 13
    .line 14
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/app/appsearch/GenericDocument;)V
    .registers 2

    .line 3
    iget-object p1, p1, Landroid/app/appsearch/GenericDocument;->mDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    invoke-direct {p0, p1}, Landroid/app/appsearch/GenericDocument;-><init>(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroid/app/appsearch/GenericDocument;->mDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    return-void
.end method

.method private blacklist appendPropertyString(Ljava/lang/String;Ljava/lang/Object;Landroid/app/appsearch/util/IndentingStringBuilder;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string p0, "\""

    .line 11
    .line 12
    invoke-virtual {p3, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "\": ["

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 23
    .line 24
    .line 25
    instance-of p1, p2, [Landroid/app/appsearch/GenericDocument;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p1, :cond_42

    .line 29
    .line 30
    check-cast p2, [Landroid/app/appsearch/GenericDocument;

    .line 31
    .line 32
    :goto_1f
    array-length p0, p2

    .line 33
    if-ge v0, p0, :cond_81

    .line 34
    .line 35
    const-string p0, "\n"

    .line 36
    .line 37
    invoke-virtual {p3, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/app/appsearch/util/IndentingStringBuilder;->increaseIndentLevel()Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 41
    .line 42
    .line 43
    aget-object p1, p2, v0

    .line 44
    .line 45
    invoke-virtual {p1, p3}, Landroid/app/appsearch/GenericDocument;->appendGenericDocumentString(Landroid/app/appsearch/util/IndentingStringBuilder;)V

    .line 46
    .line 47
    .line 48
    array-length p1, p2

    .line 49
    add-int/lit8 p1, p1, -0x1

    .line 50
    .line 51
    if-eq v0, p1, :cond_39

    .line 52
    .line 53
    const-string p1, ","

    .line 54
    .line 55
    invoke-virtual {p3, p1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 56
    .line 57
    .line 58
    :cond_39
    invoke-virtual {p3, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Landroid/app/appsearch/util/IndentingStringBuilder;->decreaseIndentLevel()Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 62
    .line 63
    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_1f

    .line 67
    :cond_42
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    :goto_46
    if-ge v0, p1, :cond_81

    .line 72
    .line 73
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    instance-of v2, v1, Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v2, :cond_5e

    .line 80
    .line 81
    invoke-virtual {p3, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v1, Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v2, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 92
    .line 93
    .line 94
    goto :goto_75

    .line 95
    :cond_5e
    instance-of v2, v1, [B

    .line 96
    .line 97
    if-eqz v2, :cond_6c

    .line 98
    .line 99
    check-cast v1, [B

    .line 100
    .line 101
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p3, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 106
    .line 107
    .line 108
    goto :goto_75

    .line 109
    :cond_6c
    if-eqz v1, :cond_75

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p3, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 116
    .line 117
    .line 118
    :cond_75
    :goto_75
    add-int/lit8 v1, p1, -0x1

    .line 119
    .line 120
    if-eq v0, v1, :cond_7e

    .line 121
    .line 122
    const-string v1, ", "

    .line 123
    .line 124
    invoke-virtual {p3, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 125
    .line 126
    .line 127
    :cond_7e
    add-int/lit8 v0, v0, 0x1

    .line 128
    .line 129
    goto :goto_46

    .line 130
    :cond_81
    const-string p0, "]"

    .line 131
    .line 132
    invoke-virtual {p3, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/GenericDocument;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x22

    .line 7
    .line 8
    if-lt v0, v1, :cond_18

    .line 9
    .line 10
    const-class v0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-class v1, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 23
    .line 24
    goto :goto_24

    .line 25
    :cond_18
    const-class v0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 36
    .line 37
    :goto_24
    new-instance v0, Landroid/app/appsearch/GenericDocument;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Landroid/app/appsearch/GenericDocument;-><init>(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method private static blacklist flattenAccumulator(Ljava/util/List;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    instance-of v2, v1, [Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v2, :cond_3e

    .line 17
    .line 18
    move v1, v0

    .line 19
    move v2, v1

    .line 20
    :goto_13
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ge v1, v3, :cond_24

    .line 25
    .line 26
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, [Ljava/lang/String;

    .line 31
    .line 32
    array-length v3, v3

    .line 33
    add-int/2addr v2, v3

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_13

    .line 37
    :cond_24
    new-array v1, v2, [Ljava/lang/String;

    .line 38
    .line 39
    move v2, v0

    .line 40
    move v3, v2

    .line 41
    :goto_28
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-ge v2, v4, :cond_3d

    .line 46
    .line 47
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, [Ljava/lang/String;

    .line 52
    .line 53
    array-length v5, v4

    .line 54
    invoke-static {v4, v0, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    array-length v4, v4

    .line 58
    add-int/2addr v3, v4

    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_28

    .line 62
    :cond_3d
    return-object v1

    .line 63
    :cond_3e
    instance-of v2, v1, [J

    .line 64
    .line 65
    if-eqz v2, :cond_6f

    .line 66
    .line 67
    move v1, v0

    .line 68
    move v2, v1

    .line 69
    :goto_44
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-ge v1, v3, :cond_55

    .line 74
    .line 75
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, [J

    .line 80
    .line 81
    array-length v3, v3

    .line 82
    add-int/2addr v2, v3

    .line 83
    add-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    goto :goto_44

    .line 86
    :cond_55
    new-array v1, v2, [J

    .line 87
    .line 88
    move v2, v0

    .line 89
    move v3, v2

    .line 90
    :goto_59
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-ge v2, v4, :cond_6e

    .line 95
    .line 96
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, [J

    .line 101
    .line 102
    array-length v5, v4

    .line 103
    invoke-static {v4, v0, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    .line 105
    .line 106
    array-length v4, v4

    .line 107
    add-int/2addr v3, v4

    .line 108
    add-int/lit8 v2, v2, 0x1

    .line 109
    .line 110
    goto :goto_59

    .line 111
    :cond_6e
    return-object v1

    .line 112
    :cond_6f
    instance-of v2, v1, [D

    .line 113
    .line 114
    if-eqz v2, :cond_a0

    .line 115
    .line 116
    move v1, v0

    .line 117
    move v2, v1

    .line 118
    :goto_75
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-ge v1, v3, :cond_86

    .line 123
    .line 124
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, [D

    .line 129
    .line 130
    array-length v3, v3

    .line 131
    add-int/2addr v2, v3

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 133
    .line 134
    goto :goto_75

    .line 135
    :cond_86
    new-array v1, v2, [D

    .line 136
    .line 137
    move v2, v0

    .line 138
    move v3, v2

    .line 139
    :goto_8a
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-ge v2, v4, :cond_9f

    .line 144
    .line 145
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, [D

    .line 150
    .line 151
    array-length v5, v4

    .line 152
    invoke-static {v4, v0, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    .line 154
    .line 155
    array-length v4, v4

    .line 156
    add-int/2addr v3, v4

    .line 157
    add-int/lit8 v2, v2, 0x1

    .line 158
    .line 159
    goto :goto_8a

    .line 160
    :cond_9f
    return-object v1

    .line 161
    :cond_a0
    instance-of v2, v1, [Z

    .line 162
    .line 163
    if-eqz v2, :cond_d1

    .line 164
    .line 165
    move v1, v0

    .line 166
    move v2, v1

    .line 167
    :goto_a6
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-ge v1, v3, :cond_b7

    .line 172
    .line 173
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    check-cast v3, [Z

    .line 178
    .line 179
    array-length v3, v3

    .line 180
    add-int/2addr v2, v3

    .line 181
    add-int/lit8 v1, v1, 0x1

    .line 182
    .line 183
    goto :goto_a6

    .line 184
    :cond_b7
    new-array v1, v2, [Z

    .line 185
    .line 186
    move v2, v0

    .line 187
    move v3, v2

    .line 188
    :goto_bb
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-ge v2, v4, :cond_d0

    .line 193
    .line 194
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    check-cast v4, [Z

    .line 199
    .line 200
    array-length v5, v4

    .line 201
    invoke-static {v4, v0, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    .line 203
    .line 204
    array-length v4, v4

    .line 205
    add-int/2addr v3, v4

    .line 206
    add-int/lit8 v2, v2, 0x1

    .line 207
    .line 208
    goto :goto_bb

    .line 209
    :cond_d0
    return-object v1

    .line 210
    :cond_d1
    instance-of v2, v1, [[B

    .line 211
    .line 212
    if-eqz v2, :cond_102

    .line 213
    .line 214
    move v1, v0

    .line 215
    move v2, v1

    .line 216
    :goto_d7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-ge v1, v3, :cond_e8

    .line 221
    .line 222
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    check-cast v3, [[B

    .line 227
    .line 228
    array-length v3, v3

    .line 229
    add-int/2addr v2, v3

    .line 230
    add-int/lit8 v1, v1, 0x1

    .line 231
    .line 232
    goto :goto_d7

    .line 233
    :cond_e8
    new-array v1, v2, [[B

    .line 234
    .line 235
    move v2, v0

    .line 236
    move v3, v2

    .line 237
    :goto_ec
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-ge v2, v4, :cond_101

    .line 242
    .line 243
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    check-cast v4, [[B

    .line 248
    .line 249
    array-length v5, v4

    .line 250
    invoke-static {v4, v0, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    .line 252
    .line 253
    array-length v4, v4

    .line 254
    add-int/2addr v3, v4

    .line 255
    add-int/lit8 v2, v2, 0x1

    .line 256
    .line 257
    goto :goto_ec

    .line 258
    :cond_101
    return-object v1

    .line 259
    :cond_102
    instance-of v2, v1, [Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 260
    .line 261
    if-eqz v2, :cond_133

    .line 262
    .line 263
    move v1, v0

    .line 264
    move v2, v1

    .line 265
    :goto_108
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-ge v1, v3, :cond_119

    .line 270
    .line 271
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    check-cast v3, [Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 276
    .line 277
    array-length v3, v3

    .line 278
    add-int/2addr v2, v3

    .line 279
    add-int/lit8 v1, v1, 0x1

    .line 280
    .line 281
    goto :goto_108

    .line 282
    :cond_119
    new-array v1, v2, [Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 283
    .line 284
    move v2, v0

    .line 285
    move v3, v2

    .line 286
    :goto_11d
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    if-ge v2, v4, :cond_132

    .line 291
    .line 292
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    check-cast v4, [Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 297
    .line 298
    array-length v5, v4

    .line 299
    invoke-static {v4, v0, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    .line 301
    .line 302
    array-length v4, v4

    .line 303
    add-int/2addr v3, v4

    .line 304
    add-int/lit8 v2, v2, 0x1

    .line 305
    .line 306
    goto :goto_11d

    .line 307
    :cond_132
    return-object v1

    .line 308
    :cond_133
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 309
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    const-string v2, "Unexpected property type: "

    .line 313
    .line 314
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw p0
.end method

.method public static whitelist getMaxIndexedProperties()I
    .registers 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    return v0
.end method

.method private static blacklist getRawPropertyFromRawDocument(Landroid/app/appsearch/PropertyPath;ILjava/util/Map;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/PropertyPath;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/safeparcel/PropertyParcel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    :goto_6
    invoke-virtual {p0}, Landroid/app/appsearch/PropertyPath;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-ge p1, v0, :cond_169

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/app/appsearch/PropertyPath;->get(I)Landroid/app/appsearch/PropertyPath$PathSegment;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/app/appsearch/PropertyPath$PathSegment;->getPropertyName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_1c

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_1c
    invoke-virtual {v0}, Landroid/app/appsearch/PropertyPath$PathSegment;->getPropertyIndex()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v3, -0x1

    .line 34
    if-eq v0, v3, :cond_ec

    .line 35
    .line 36
    move-object v3, v2

    .line 37
    check-cast v3, Landroid/app/appsearch/safeparcel/PropertyParcel;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getStringValues()[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_40

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getStringValues()[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_3c

    .line 50
    .line 51
    array-length v3, v2

    .line 52
    if-ge v0, v3, :cond_3c

    .line 53
    .line 54
    add-int/lit8 v3, v0, 0x1

    .line 55
    .line 56
    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move-object v0, v1

    .line 62
    :goto_3d
    move-object v2, v0

    .line 63
    goto/16 :goto_ec

    .line 64
    .line 65
    :cond_40
    invoke-virtual {v3}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getLongValues()[J

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    if-eqz v4, :cond_56

    .line 70
    .line 71
    invoke-virtual {v3}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getLongValues()[J

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_3c

    .line 76
    .line 77
    array-length v3, v2

    .line 78
    if-ge v0, v3, :cond_3c

    .line 79
    .line 80
    add-int/lit8 v3, v0, 0x1

    .line 81
    .line 82
    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->copyOfRange([JII)[J

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    goto :goto_3d

    .line 87
    :cond_56
    invoke-virtual {v3}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getDoubleValues()[D

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    if-eqz v4, :cond_6c

    .line 92
    .line 93
    invoke-virtual {v3}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getDoubleValues()[D

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_3c

    .line 98
    .line 99
    array-length v3, v2

    .line 100
    if-ge v0, v3, :cond_3c

    .line 101
    .line 102
    add-int/lit8 v3, v0, 0x1

    .line 103
    .line 104
    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->copyOfRange([DII)[D

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    goto :goto_3d

    .line 109
    :cond_6c
    invoke-virtual {v3}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getBooleanValues()[Z

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    if-eqz v4, :cond_82

    .line 114
    .line 115
    invoke-virtual {v3}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getBooleanValues()[Z

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    if-eqz v2, :cond_3c

    .line 120
    .line 121
    array-length v3, v2

    .line 122
    if-ge v0, v3, :cond_3c

    .line 123
    .line 124
    add-int/lit8 v3, v0, 0x1

    .line 125
    .line 126
    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->copyOfRange([ZII)[Z

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    goto :goto_3d

    .line 131
    :cond_82
    invoke-virtual {v3}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getBytesValues()[[B

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    if-eqz v4, :cond_98

    .line 136
    .line 137
    invoke-virtual {v3}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getBytesValues()[[B

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    if-eqz v2, :cond_3c

    .line 142
    .line 143
    array-length v3, v2

    .line 144
    if-ge v0, v3, :cond_3c

    .line 145
    .line 146
    add-int/lit8 v3, v0, 0x1

    .line 147
    .line 148
    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    goto :goto_3d

    .line 153
    :cond_98
    invoke-virtual {v3}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getDocumentValues()[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    if-eqz v4, :cond_aa

    .line 158
    .line 159
    invoke-virtual {v3}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getDocumentValues()[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    if-eqz v2, :cond_3c

    .line 164
    .line 165
    array-length v3, v2

    .line 166
    if-ge v0, v3, :cond_3c

    .line 167
    .line 168
    aget-object v0, v2, v0

    .line 169
    .line 170
    goto :goto_3d

    .line 171
    :cond_aa
    invoke-virtual {v3}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getEmbeddingValues()[Landroid/app/appsearch/EmbeddingVector;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    if-eqz v4, :cond_c1

    .line 176
    .line 177
    invoke-virtual {v3}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getEmbeddingValues()[Landroid/app/appsearch/EmbeddingVector;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    if-eqz v2, :cond_3c

    .line 182
    .line 183
    array-length v3, v2

    .line 184
    if-ge v0, v3, :cond_3c

    .line 185
    .line 186
    add-int/lit8 v3, v0, 0x1

    .line 187
    .line 188
    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    goto/16 :goto_3d

    .line 193
    .line 194
    :cond_c1
    invoke-virtual {v3}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getBlobHandleValues()[Landroid/app/appsearch/AppSearchBlobHandle;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    if-eqz v4, :cond_d8

    .line 199
    .line 200
    invoke-virtual {v3}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getBlobHandleValues()[Landroid/app/appsearch/AppSearchBlobHandle;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    if-eqz v2, :cond_3c

    .line 205
    .line 206
    array-length v3, v2

    .line 207
    if-ge v0, v3, :cond_3c

    .line 208
    .line 209
    add-int/lit8 v3, v0, 0x1

    .line 210
    .line 211
    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    goto/16 :goto_3d

    .line 216
    .line 217
    :cond_d8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 218
    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string p2, "Unsupported value type: "

    .line 222
    .line 223
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw p0

    .line 237
    :cond_ec
    :goto_ec
    if-eqz v2, :cond_15b

    .line 238
    .line 239
    invoke-virtual {p0}, Landroid/app/appsearch/PropertyPath;->size()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    const/4 v3, 0x1

    .line 244
    sub-int/2addr v0, v3

    .line 245
    if-ne p1, v0, :cond_f7

    .line 246
    .line 247
    goto :goto_15b

    .line 248
    :cond_f7
    instance-of v0, v2, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 249
    .line 250
    if-eqz v0, :cond_102

    .line 251
    .line 252
    check-cast v2, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 253
    .line 254
    invoke-virtual {v2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getPropertyMap()Ljava/util/Map;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    goto :goto_143

    .line 259
    :cond_102
    instance-of v0, v2, Landroid/app/appsearch/safeparcel/PropertyParcel;

    .line 260
    .line 261
    if-eqz v0, :cond_147

    .line 262
    .line 263
    check-cast v2, Landroid/app/appsearch/safeparcel/PropertyParcel;

    .line 264
    .line 265
    invoke-virtual {v2}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getDocumentValues()[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    if-eqz v0, :cond_147

    .line 270
    .line 271
    invoke-virtual {v2}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getDocumentValues()[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    const/4 v1, 0x0

    .line 276
    if-eqz v0, :cond_11f

    .line 277
    .line 278
    array-length v2, v0

    .line 279
    if-ne v2, v3, :cond_11f

    .line 280
    .line 281
    aget-object p2, v0, v1

    .line 282
    .line 283
    invoke-virtual {p2}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getPropertyMap()Ljava/util/Map;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    goto :goto_143

    .line 288
    :cond_11f
    if-eqz v0, :cond_143

    .line 289
    .line 290
    new-instance p2, Ljava/util/ArrayList;

    .line 291
    .line 292
    array-length v2, v0

    .line 293
    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    .line 295
    .line 296
    array-length v2, v0

    .line 297
    :goto_128
    if-ge v1, v2, :cond_13e

    .line 298
    .line 299
    aget-object v4, v0, v1

    .line 300
    .line 301
    add-int/lit8 v5, p1, 0x1

    .line 302
    .line 303
    invoke-virtual {v4}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getPropertyMap()Ljava/util/Map;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-static {p0, v5, v4}, Landroid/app/appsearch/GenericDocument;->getRawPropertyFromRawDocument(Landroid/app/appsearch/PropertyPath;ILjava/util/Map;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    if-eqz v4, :cond_13b

    .line 312
    .line 313
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    :cond_13b
    add-int/lit8 v1, v1, 0x1

    .line 317
    .line 318
    goto :goto_128

    .line 319
    :cond_13e
    invoke-static {p2}, Landroid/app/appsearch/GenericDocument;->flattenAccumulator(Ljava/util/List;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    return-object p0

    .line 324
    :cond_143
    :goto_143
    add-int/lit8 p1, p1, 0x1

    .line 325
    .line 326
    goto/16 :goto_6

    .line 327
    .line 328
    :cond_147
    new-instance p1, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    const-string p2, "Failed to apply path to document; no nested value found: "

    .line 331
    .line 332
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    const-string p1, "AppSearchGenericDocumen"

    .line 343
    .line 344
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    return-object v1

    .line 348
    :cond_15b
    :goto_15b
    if-eqz v2, :cond_168

    .line 349
    .line 350
    instance-of p0, v2, Landroid/app/appsearch/safeparcel/PropertyParcel;

    .line 351
    .line 352
    if-eqz p0, :cond_168

    .line 353
    .line 354
    check-cast v2, Landroid/app/appsearch/safeparcel/PropertyParcel;

    .line 355
    .line 356
    invoke-virtual {v2}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getValues()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    return-object p0

    .line 361
    :cond_168
    return-object v2

    .line 362
    :cond_169
    return-object v1
.end method

.method private static blacklist safeCastProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_4
    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_8} :catch_9

    .line 9
    return-object p0

    .line 10
    :catch_9
    move-exception p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Error casting to requested type for path \""

    .line 14
    .line 15
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, "\""

    .line 22
    .line 23
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p2, "AppSearchGenericDocumen"

    .line 31
    .line 32
    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method private static blacklist warnIfSinglePropertyTooLong(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-le p2, v0, :cond_33

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "The value for \""

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "\" contains "

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, " elements. Only the first one will be returned from getProperty"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, "(). Try getProperty"

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p0, "Array()."

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p1, "AppSearchGenericDocumen"

    .line 48
    .line 49
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_33
    return-void
.end method


# virtual methods
.method blacklist appendGenericDocumentString(Landroid/app/appsearch/util/IndentingStringBuilder;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "{\n"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/appsearch/util/IndentingStringBuilder;->increaseIndentLevel()Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v0, "namespace: \""

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getNamespace()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "\",\n"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, "id: \""

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, "score: "

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getScore()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v2}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/Object;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v2, ",\n"

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, "schemaType: \""

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getSchemaType()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v0, v3}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getParentTypes()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v1, "\n"

    .line 93
    .line 94
    if-eqz v0, :cond_6c

    .line 95
    .line 96
    const-string v3, "parentTypes: "

    .line 97
    .line 98
    invoke-virtual {p1, v3}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/Object;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 107
    .line 108
    .line 109
    :cond_6c
    const-string v0, "creationTimestampMillis: "

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getCreationTimestampMillis()J

    .line 116
    .line 117
    .line 118
    move-result-wide v3

    .line 119
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v0, v3}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/Object;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0, v2}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v0, "timeToLiveMillis: "

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getTtlMillis()J

    .line 137
    .line 138
    .line 139
    move-result-wide v3

    .line 140
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v0, v3}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/Object;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0, v2}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v0, "properties: {\n"

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getPropertyNames()Ljava/util/Set;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const/4 v3, 0x0

    .line 161
    new-array v4, v3, [Ljava/lang/String;

    .line 162
    .line 163
    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, [Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :goto_ab
    array-length v4, v0

    .line 173
    if-ge v3, v4, :cond_cd

    .line 174
    .line 175
    aget-object v4, v0, v3

    .line 176
    .line 177
    invoke-virtual {p0, v4}, Landroid/app/appsearch/GenericDocument;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/app/appsearch/util/IndentingStringBuilder;->increaseIndentLevel()Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 185
    .line 186
    .line 187
    aget-object v5, v0, v3

    .line 188
    .line 189
    invoke-direct {p0, v5, v4, p1}, Landroid/app/appsearch/GenericDocument;->appendPropertyString(Ljava/lang/String;Ljava/lang/Object;Landroid/app/appsearch/util/IndentingStringBuilder;)V

    .line 190
    .line 191
    .line 192
    array-length v4, v0

    .line 193
    add-int/lit8 v4, v4, -0x1

    .line 194
    .line 195
    if-eq v3, v4, :cond_c7

    .line 196
    .line 197
    invoke-virtual {p1, v2}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 198
    .line 199
    .line 200
    :cond_c7
    invoke-virtual {p1}, Landroid/app/appsearch/util/IndentingStringBuilder;->decreaseIndentLevel()Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 201
    .line 202
    .line 203
    add-int/lit8 v3, v3, 0x1

    .line 204
    .line 205
    goto :goto_ab

    .line 206
    :cond_cd
    invoke-virtual {p1, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 207
    .line 208
    .line 209
    const-string p0, "}"

    .line 210
    .line 211
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/app/appsearch/util/IndentingStringBuilder;->decreaseIndentLevel()Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 221
    .line 222
    .line 223
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-ne p0, p1, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_4
    instance-of v0, p1, Landroid/app/appsearch/GenericDocument;

    .line 6
    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_a
    check-cast p1, Landroid/app/appsearch/GenericDocument;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument;->mDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 14
    .line 15
    iget-object p1, p1, Landroid/app/appsearch/GenericDocument;->mDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public whitelist getCreationTimestampMillis()J
    .registers 3

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument;->mDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getCreationTimestampMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public blacklist getDocumentParcel()Landroid/app/appsearch/safeparcel/GenericDocumentParcel;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument;->mDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument;->mDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist getNamespace()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument;->mDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getNamespace()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public blacklist getParentTypes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument;->mDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getParentTypes()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_a
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public whitelist getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/app/appsearch/PropertyPath;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/app/appsearch/PropertyPath;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument;->mDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getPropertyMap()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1, p0}, Landroid/app/appsearch/GenericDocument;->getRawPropertyFromRawDocument(Landroid/app/appsearch/PropertyPath;ILjava/util/Map;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    instance-of v0, p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 21
    .line 22
    if-eqz v0, :cond_23

    .line 23
    .line 24
    new-instance p1, Landroid/app/appsearch/GenericDocument;

    .line 25
    .line 26
    check-cast p0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Landroid/app/appsearch/GenericDocument;-><init>(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)V

    .line 29
    .line 30
    .line 31
    filled-new-array {p1}, [Landroid/app/appsearch/GenericDocument;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_23
    instance-of v0, p0, [Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 37
    .line 38
    if-eqz v0, :cond_5a

    .line 39
    .line 40
    check-cast p0, [Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 41
    .line 42
    array-length v0, p0

    .line 43
    new-array v0, v0, [Landroid/app/appsearch/GenericDocument;

    .line 44
    .line 45
    :goto_2c
    array-length v2, p0

    .line 46
    if-ge v1, v2, :cond_59

    .line 47
    .line 48
    aget-object v2, p0, v1

    .line 49
    .line 50
    if-nez v2, :cond_4f

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v3, "The inner parcel is null at "

    .line 55
    .line 56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, ", for path: "

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v3, "AppSearchGenericDocumen"

    .line 75
    .line 76
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    goto :goto_56

    .line 80
    :cond_4f
    new-instance v3, Landroid/app/appsearch/GenericDocument;

    .line 81
    .line 82
    invoke-direct {v3, v2}, Landroid/app/appsearch/GenericDocument;-><init>(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)V

    .line 83
    .line 84
    .line 85
    aput-object v3, v0, v1

    .line 86
    .line 87
    :goto_56
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_2c

    .line 90
    :cond_59
    return-object v0

    .line 91
    :cond_5a
    return-object p0
.end method

.method public whitelist getPropertyBlobHandle(Ljava/lang/String;)Landroid/app/appsearch/AppSearchBlobHandle;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/appsearch/GenericDocument;->getPropertyBlobHandleArray(Ljava/lang/String;)[Landroid/app/appsearch/AppSearchBlobHandle;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_17

    .line 9
    .line 10
    array-length v0, p0

    .line 11
    if-nez v0, :cond_d

    .line 12
    .line 13
    goto :goto_17

    .line 14
    :cond_d
    const-string v0, "BlobHandle"

    .line 15
    .line 16
    array-length v1, p0

    .line 17
    invoke-static {v0, p1, v1}, Landroid/app/appsearch/GenericDocument;->warnIfSinglePropertyTooLong(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    aget-object p0, p0, p1

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_17
    :goto_17
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public whitelist getPropertyBlobHandleArray(Ljava/lang/String;)[Landroid/app/appsearch/AppSearchBlobHandle;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/appsearch/GenericDocument;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-class v0, [Landroid/app/appsearch/AppSearchBlobHandle;

    .line 9
    .line 10
    invoke-static {p1, p0, v0}, Landroid/app/appsearch/GenericDocument;->safeCastProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, [Landroid/app/appsearch/AppSearchBlobHandle;

    .line 15
    .line 16
    return-object p0
.end method

.method public whitelist getPropertyBoolean(Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/appsearch/GenericDocument;->getPropertyBooleanArray(Ljava/lang/String;)[Z

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p0, :cond_17

    .line 10
    .line 11
    array-length v1, p0

    .line 12
    if-nez v1, :cond_e

    .line 13
    .line 14
    goto :goto_17

    .line 15
    :cond_e
    const-string v1, "Boolean"

    .line 16
    .line 17
    array-length v2, p0

    .line 18
    invoke-static {v1, p1, v2}, Landroid/app/appsearch/GenericDocument;->warnIfSinglePropertyTooLong(Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    aget-boolean p0, p0, v0

    .line 22
    .line 23
    return p0

    .line 24
    :cond_17
    :goto_17
    return v0
.end method

.method public whitelist getPropertyBooleanArray(Ljava/lang/String;)[Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/appsearch/GenericDocument;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-class v0, [Z

    .line 9
    .line 10
    invoke-static {p1, p0, v0}, Landroid/app/appsearch/GenericDocument;->safeCastProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, [Z

    .line 15
    .line 16
    return-object p0
.end method

.method public whitelist getPropertyBytes(Ljava/lang/String;)[B
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/appsearch/GenericDocument;->getPropertyBytesArray(Ljava/lang/String;)[[B

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_17

    .line 9
    .line 10
    array-length v0, p0

    .line 11
    if-nez v0, :cond_d

    .line 12
    .line 13
    goto :goto_17

    .line 14
    :cond_d
    const-string v0, "ByteArray"

    .line 15
    .line 16
    array-length v1, p0

    .line 17
    invoke-static {v0, p1, v1}, Landroid/app/appsearch/GenericDocument;->warnIfSinglePropertyTooLong(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    aget-object p0, p0, p1

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_17
    :goto_17
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public whitelist getPropertyBytesArray(Ljava/lang/String;)[[B
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/appsearch/GenericDocument;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-class v0, [[B

    .line 9
    .line 10
    invoke-static {p1, p0, v0}, Landroid/app/appsearch/GenericDocument;->safeCastProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, [[B

    .line 15
    .line 16
    return-object p0
.end method

.method public whitelist getPropertyDocument(Ljava/lang/String;)Landroid/app/appsearch/GenericDocument;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/appsearch/GenericDocument;->getPropertyDocumentArray(Ljava/lang/String;)[Landroid/app/appsearch/GenericDocument;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_17

    .line 9
    .line 10
    array-length v0, p0

    .line 11
    if-nez v0, :cond_d

    .line 12
    .line 13
    goto :goto_17

    .line 14
    :cond_d
    const-string v0, "Document"

    .line 15
    .line 16
    array-length v1, p0

    .line 17
    invoke-static {v0, p1, v1}, Landroid/app/appsearch/GenericDocument;->warnIfSinglePropertyTooLong(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    aget-object p0, p0, p1

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_17
    :goto_17
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public whitelist getPropertyDocumentArray(Ljava/lang/String;)[Landroid/app/appsearch/GenericDocument;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/appsearch/GenericDocument;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-class v0, [Landroid/app/appsearch/GenericDocument;

    .line 9
    .line 10
    invoke-static {p1, p0, v0}, Landroid/app/appsearch/GenericDocument;->safeCastProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, [Landroid/app/appsearch/GenericDocument;

    .line 15
    .line 16
    return-object p0
.end method

.method public whitelist getPropertyDouble(Ljava/lang/String;)D
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/appsearch/GenericDocument;->getPropertyDoubleArray(Ljava/lang/String;)[D

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_17

    .line 9
    .line 10
    array-length v0, p0

    .line 11
    if-nez v0, :cond_d

    .line 12
    .line 13
    goto :goto_17

    .line 14
    :cond_d
    const-string v0, "Double"

    .line 15
    .line 16
    array-length v1, p0

    .line 17
    invoke-static {v0, p1, v1}, Landroid/app/appsearch/GenericDocument;->warnIfSinglePropertyTooLong(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    aget-wide p0, p0, p1

    .line 22
    .line 23
    return-wide p0

    .line 24
    :cond_17
    :goto_17
    const-wide/16 p0, 0x0

    .line 25
    .line 26
    return-wide p0
.end method

.method public whitelist getPropertyDoubleArray(Ljava/lang/String;)[D
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/appsearch/GenericDocument;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-class v0, [D

    .line 9
    .line 10
    invoke-static {p1, p0, v0}, Landroid/app/appsearch/GenericDocument;->safeCastProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, [D

    .line 15
    .line 16
    return-object p0
.end method

.method public whitelist getPropertyEmbedding(Ljava/lang/String;)Landroid/app/appsearch/EmbeddingVector;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/appsearch/GenericDocument;->getPropertyEmbeddingArray(Ljava/lang/String;)[Landroid/app/appsearch/EmbeddingVector;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_17

    .line 9
    .line 10
    array-length v0, p0

    .line 11
    if-nez v0, :cond_d

    .line 12
    .line 13
    goto :goto_17

    .line 14
    :cond_d
    const-string v0, "Embedding"

    .line 15
    .line 16
    array-length v1, p0

    .line 17
    invoke-static {v0, p1, v1}, Landroid/app/appsearch/GenericDocument;->warnIfSinglePropertyTooLong(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    aget-object p0, p0, p1

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_17
    :goto_17
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public whitelist getPropertyEmbeddingArray(Ljava/lang/String;)[Landroid/app/appsearch/EmbeddingVector;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/appsearch/GenericDocument;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-class v0, [Landroid/app/appsearch/EmbeddingVector;

    .line 9
    .line 10
    invoke-static {p1, p0, v0}, Landroid/app/appsearch/GenericDocument;->safeCastProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, [Landroid/app/appsearch/EmbeddingVector;

    .line 15
    .line 16
    return-object p0
.end method

.method public whitelist getPropertyLong(Ljava/lang/String;)J
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/appsearch/GenericDocument;->getPropertyLongArray(Ljava/lang/String;)[J

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_17

    .line 9
    .line 10
    array-length v0, p0

    .line 11
    if-nez v0, :cond_d

    .line 12
    .line 13
    goto :goto_17

    .line 14
    :cond_d
    const-string v0, "Long"

    .line 15
    .line 16
    array-length v1, p0

    .line 17
    invoke-static {v0, p1, v1}, Landroid/app/appsearch/GenericDocument;->warnIfSinglePropertyTooLong(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    aget-wide p0, p0, p1

    .line 22
    .line 23
    return-wide p0

    .line 24
    :cond_17
    :goto_17
    const-wide/16 p0, 0x0

    .line 25
    .line 26
    return-wide p0
.end method

.method public whitelist getPropertyLongArray(Ljava/lang/String;)[J
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/appsearch/GenericDocument;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-class v0, [J

    .line 9
    .line 10
    invoke-static {p1, p0, v0}, Landroid/app/appsearch/GenericDocument;->safeCastProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, [J

    .line 15
    .line 16
    return-object p0
.end method

.method public whitelist getPropertyNames()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument;->mDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getPropertyNames()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public whitelist getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/appsearch/GenericDocument;->getPropertyStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_17

    .line 9
    .line 10
    array-length v0, p0

    .line 11
    if-nez v0, :cond_d

    .line 12
    .line 13
    goto :goto_17

    .line 14
    :cond_d
    const-string v0, "String"

    .line 15
    .line 16
    array-length v1, p0

    .line 17
    invoke-static {v0, p1, v1}, Landroid/app/appsearch/GenericDocument;->warnIfSinglePropertyTooLong(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    aget-object p0, p0, p1

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_17
    :goto_17
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public whitelist getPropertyStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/appsearch/GenericDocument;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-class v0, [Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, p0, v0}, Landroid/app/appsearch/GenericDocument;->safeCastProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, [Ljava/lang/String;

    .line 15
    .line 16
    return-object p0
.end method

.method public whitelist getSchemaType()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument;->mDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getSchemaType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist getScore()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument;->mDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getScore()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public whitelist getTtlMillis()J
    .registers 3

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument;->mDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getTtlMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument;->mDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/util/IndentingStringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/appsearch/GenericDocument;->appendGenericDocumentString(Landroid/app/appsearch/util/IndentingStringBuilder;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroid/app/appsearch/GenericDocument;->mDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 5
    .line 6
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
