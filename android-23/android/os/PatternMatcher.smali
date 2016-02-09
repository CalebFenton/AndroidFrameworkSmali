.class public Landroid/os/PatternMatcher;
.super Ljava/lang/Object;
.source "PatternMatcher.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PatternMatcher$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATTERN_LITERAL:I = 0x0

.field public static final PATTERN_PREFIX:I = 0x1

.field public static final PATTERN_SIMPLE_GLOB:I = 0x2


# instance fields
.field private final mPattern:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 99
    new-instance v0, Landroid/os/PatternMatcher$1;

    #@2
    invoke-direct {v0}, Landroid/os/PatternMatcher$1;-><init>()V

    #@5
    .line 98
    sput-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    #@9
    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/os/PatternMatcher;->mType:I

    #@f
    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    #@5
    .line 53
    iput p2, p0, Landroid/os/PatternMatcher;->mType:I

    #@7
    .line 51
    return-void
.end method

.method static matchPattern(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 13
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "match"    # Ljava/lang/String;
    .param p2, "type"    # I

    #@0
    .prologue
    const/16 v12, 0x5c

    #@2
    const/16 v11, 0x2a

    #@4
    const/16 v10, 0x2e

    #@6
    const/4 v7, 0x1

    #@7
    const/4 v8, 0x0

    #@8
    .line 110
    if-nez p1, :cond_0

    #@a
    return v8

    #@b
    .line 111
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 112
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v7

    #@11
    return v7

    #@12
    .line 113
    :cond_1
    if-ne p2, v7, :cond_2

    #@14
    .line 114
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@17
    move-result v7

    #@18
    return v7

    #@19
    .line 115
    :cond_2
    const/4 v9, 0x2

    #@1a
    if-eq p2, v9, :cond_3

    #@1c
    .line 116
    return v8

    #@1d
    .line 119
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@20
    move-result v1

    #@21
    .line 120
    .local v1, "NP":I
    if-gtz v1, :cond_5

    #@23
    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@26
    move-result v9

    #@27
    if-gtz v9, :cond_4

    #@29
    :goto_0
    return v7

    #@2a
    :cond_4
    move v7, v8

    #@2b
    goto :goto_0

    #@2c
    .line 123
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2f
    move-result v0

    #@30
    .line 124
    .local v0, "NM":I
    const/4 v5, 0x0

    #@31
    .local v5, "ip":I
    const/4 v4, 0x0

    #@32
    .line 125
    .local v4, "im":I
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    #@35
    move-result v6

    #@36
    .line 126
    :goto_1
    if-ge v5, v1, :cond_17

    #@38
    if-ge v4, v0, :cond_17

    #@3a
    .line 127
    move v2, v6

    #@3b
    .line 128
    .local v2, "c":C
    add-int/lit8 v5, v5, 0x1

    #@3d
    .line 129
    if-ge v5, v1, :cond_7

    #@3f
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@42
    move-result v6

    #@43
    .line 130
    :goto_2
    if-ne v2, v12, :cond_8

    #@45
    const/4 v3, 0x1

    #@46
    .line 131
    .local v3, "escaped":Z
    :goto_3
    if-eqz v3, :cond_6

    #@48
    .line 132
    move v2, v6

    #@49
    .line 133
    add-int/lit8 v5, v5, 0x1

    #@4b
    .line 134
    if-ge v5, v1, :cond_9

    #@4d
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@50
    move-result v6

    #@51
    .line 136
    :cond_6
    :goto_4
    if-ne v6, v11, :cond_15

    #@53
    .line 137
    if-nez v3, :cond_12

    #@55
    if-ne v2, v10, :cond_12

    #@57
    .line 138
    add-int/lit8 v9, v1, -0x1

    #@59
    if-lt v5, v9, :cond_a

    #@5b
    .line 141
    return v7

    #@5c
    .line 129
    .end local v3    # "escaped":Z
    :cond_7
    const/4 v6, 0x0

    #@5d
    .local v6, "nextChar":C
    goto :goto_2

    #@5e
    .line 130
    .end local v6    # "nextChar":C
    :cond_8
    const/4 v3, 0x0

    #@5f
    .restart local v3    # "escaped":Z
    goto :goto_3

    #@60
    .line 134
    :cond_9
    const/4 v6, 0x0

    #@61
    .restart local v6    # "nextChar":C
    goto :goto_4

    #@62
    .line 143
    .end local v6    # "nextChar":C
    :cond_a
    add-int/lit8 v5, v5, 0x1

    #@64
    .line 144
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@67
    move-result v6

    #@68
    .line 147
    .local v6, "nextChar":C
    if-ne v6, v12, :cond_b

    #@6a
    .line 148
    add-int/lit8 v5, v5, 0x1

    #@6c
    .line 149
    if-ge v5, v1, :cond_d

    #@6e
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@71
    move-result v6

    #@72
    .line 152
    .end local v6    # "nextChar":C
    :cond_b
    :goto_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@75
    move-result v9

    #@76
    if-ne v9, v6, :cond_e

    #@78
    .line 157
    :cond_c
    if-ne v4, v0, :cond_f

    #@7a
    .line 160
    return v8

    #@7b
    .line 149
    .restart local v6    # "nextChar":C
    :cond_d
    const/4 v6, 0x0

    #@7c
    .local v6, "nextChar":C
    goto :goto_5

    #@7d
    .line 155
    .end local v6    # "nextChar":C
    :cond_e
    add-int/lit8 v4, v4, 0x1

    #@7f
    .line 156
    if-ge v4, v0, :cond_c

    #@81
    goto :goto_5

    #@82
    .line 162
    :cond_f
    add-int/lit8 v5, v5, 0x1

    #@84
    .line 163
    if-ge v5, v1, :cond_10

    #@86
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@89
    move-result v6

    #@8a
    .line 164
    :goto_6
    add-int/lit8 v4, v4, 0x1

    #@8c
    goto :goto_1

    #@8d
    .line 163
    :cond_10
    const/4 v6, 0x0

    #@8e
    .restart local v6    # "nextChar":C
    goto :goto_6

    #@8f
    .line 171
    .end local v6    # "nextChar":C
    :cond_11
    add-int/lit8 v4, v4, 0x1

    #@91
    .line 172
    if-ge v4, v0, :cond_13

    #@93
    .line 168
    :cond_12
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@96
    move-result v9

    #@97
    if-eq v9, v2, :cond_11

    #@99
    .line 173
    :cond_13
    add-int/lit8 v5, v5, 0x1

    #@9b
    .line 174
    if-ge v5, v1, :cond_14

    #@9d
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@a0
    move-result v6

    #@a1
    .local v6, "nextChar":C
    goto :goto_1

    #@a2
    .end local v6    # "nextChar":C
    :cond_14
    const/4 v6, 0x0

    #@a3
    .local v6, "nextChar":C
    goto :goto_1

    #@a4
    .line 177
    .end local v6    # "nextChar":C
    :cond_15
    if-eq v2, v10, :cond_16

    #@a6
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@a9
    move-result v9

    #@aa
    if-eq v9, v2, :cond_16

    #@ac
    return v8

    #@ad
    .line 178
    :cond_16
    add-int/lit8 v4, v4, 0x1

    #@af
    goto :goto_1

    #@b0
    .line 182
    .end local v2    # "c":C
    .end local v3    # "escaped":Z
    :cond_17
    if-lt v5, v1, :cond_18

    #@b2
    if-lt v4, v0, :cond_18

    #@b4
    .line 184
    return v7

    #@b5
    .line 190
    :cond_18
    add-int/lit8 v9, v1, -0x2

    #@b7
    if-ne v5, v9, :cond_19

    #@b9
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@bc
    move-result v9

    #@bd
    if-ne v9, v10, :cond_19

    #@bf
    .line 191
    add-int/lit8 v9, v5, 0x1

    #@c1
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    #@c4
    move-result v9

    #@c5
    if-ne v9, v11, :cond_19

    #@c7
    .line 192
    return v7

    #@c8
    .line 195
    :cond_19
    return v8
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 85
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getType()I
    .locals 1

    #@0
    .prologue
    .line 61
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    #@2
    return v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    #@2
    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    #@4
    invoke-static {v0, p1, v1}, Landroid/os/PatternMatcher;->matchPattern(Ljava/lang/String;Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 69
    const-string/jumbo v0, "? "

    #@3
    .line 70
    .local v0, "type":Ljava/lang/String;
    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    #@5
    packed-switch v1, :pswitch_data_0

    #@8
    .line 81
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "PatternMatcher{"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "}"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    return-object v1

    #@2a
    .line 72
    :pswitch_0
    const-string/jumbo v0, "LITERAL: "

    #@2d
    goto :goto_0

    #@2e
    .line 75
    :pswitch_1
    const-string/jumbo v0, "PREFIX: "

    #@31
    goto :goto_0

    #@32
    .line 78
    :pswitch_2
    const-string/jumbo v0, "GLOB: "

    #@35
    goto :goto_0

    #@36
    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 90
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 88
    return-void
.end method
